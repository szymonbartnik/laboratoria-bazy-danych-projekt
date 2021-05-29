-- 1. wybierz wszystkie dostępne samochody w systemie razem z marką, modelem i specyfikacją
select B.Name                           as Producent,
       CM.Name                          as Model,
       Cars.VehicleIdentificationNumber as VIN,
       Cars.ProductionDate              as 'Data produkcji',
       CS.TrunkCapacity                 as 'Pojemność bagażnika',
       CS.Towbar                        as 'hak holowniczy',
       CS.NumberOfDoors                 as 'liczba drzwi',
       CS.Height                        as 'wysokość',
       CS.Width                         as 'szerokość',
       CS.Weight                        as 'waga'
from Cars
         join CarModels CM on Cars.CarModelId = CM.Id
         join Brands B on Cars.BrandId = B.Id
         join CarSpecification CS on CM.CarSpecificationId = CS.Id

-- 2. wyświetl liczbe dostępnych modeli dla każdego producenta
select BrandId, B.Name as 'Producent', Count(*) as 'Liczba modeli'
from dbo.CarModels
         join Brands B on B.Id = CarModels.BrandId
group by BrandId, B.Name

-- 3. wyświetl liczbe dostępnych modeli dla każdego producenta
select BrandId, B.Name as 'Producent', Count(*) as 'Liczba modeli'
from dbo.CarModels
         join Brands B on B.Id = CarModels.BrandId
group by BrandId, B.Name

-- 4. wyświetl wszystkie modele samochodów z dostepnymi silnikami
select B.Name             as Producent,
       dbo.CarModels.Name as Model,
       E.Name             as 'Silnik'
from CarModels
         join CarModelEngine CME on CarModels.Id = CME.CarModelsId
         join Engine E on CME.EnginesId = E.Id
         join Brands B on B.Id = CarModels.BrandId
ORDER BY Producent, Model

-- 5. Wyświetl klienta który złóżył zamówienie za największą kwote zamówione samochody
select top 1 dbo.Client.*, O.SummaryPrice
from dbo.Client
         join [Order] O on Client.Id = O.ClientId
order by O.SummaryPrice desc

-- 6. Wyświetl dochody pogrupowane po miesiącu
select MONTH(OrderDate)  as 'miesiac',
       Year(OrderDate)   as 'rok',
       SUM(SummaryPrice) as 'suma za miesiąc',
       Count(*)          as 'liczba zamowien'
from dbo.[Order]
group by MONTH(OrderDate), Year(OrderDate)
order by Year(OrderDate) desc, MONTH(OrderDate) desc

-- 7. Wyświetl klientów posortowanych po mocy zakupionego samochodu
select Client.Name as 'imie', Client.Surname as 'nazwisko', B.Name as 'producent', CM.Name as 'model', E.Power as 'moc'
from Client
         join [Order] O on Client.Id = O.ClientId
         join CarOrder CO on O.Id = CO.OrdersId
         join Cars C on CO.CarsId = C.Id
         join CarModels CM on C.CarModelId = CM.Id
         join Brands B on B.Id = C.BrandId
         join Engine E on C.EngineId = E.Id
order by E.Power desc 

-- 8. Wyswietl modele samochodów które nie zostały zakupione
Select *
from dbo.CarModels
where Id not in (
    select C.CarModelId
    from [Order]
             join CarOrder CO on [Order].Id = CO.OrdersId
             join Cars C on CO.CarsId = C.Id
)

-- 9. Pogrupuj kolory po nazwie i wyświetl liczbe kombinacji (kodów lakieru)
select Name, count(*)
from Colors
group by Name

-- 10. Wyświetl silniki posortowane na podstawie liczby zakupów
select Engine.Name, Count(*)
from Engine
         join Cars C on Engine.Id = C.EngineId
         join CarOrder CO on C.Id = CO.CarsId
         join [Order] O on CO.OrdersId = O.Id
group by Engine.Name
order by Count(*) desc

-- 11. wyświetlić ranking producentów i modeli wśród zamówień
WITH brand_with_order_count(BrandId, orderCount) AS (
    select BrandId, Count(*)
    from [Order]
             join CarOrder CO on [Order].Id = CO.OrdersId
             join Cars C on CO.CarsId = C.Id
    Group by BrandId
)
SELECT
    Brands.Name
    BrandId,
    orderCount
FROM brand_with_order_count
join Brands on brand_with_order_count.BrandId = Brands.Id
order by brand_with_order_count.orderCount desc

-- 12. wyświetlić kolory posortowane od najbardziej popularnego (najczęsciej kupowanego)
select Col.Name, Count(*)
from [Order]
         join CarOrder CO on [Order].Id = CO.OrdersId
         join Cars C on CO.CarsId = C.Id
         join Colors Col on C.ColorId = Col.Id
Group by Col.Name


