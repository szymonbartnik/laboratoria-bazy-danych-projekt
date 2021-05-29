-- 1. z tabeli Cars wybranie VIN samochodów które nie mają więcej niż 2 lata
select VehicleIdentificationNumber               as VIN,
       ProductionDate                            as DataProdukcji,
       DATEDIFF(year, ProductionDate, GETDATE()) as WiekWLatach
from dbo.Cars
where DATEDIFF(year, ProductionDate, GETDATE()) < 2


-- 2. z tabeli Colors wszystkie dostępne kolory
select Name as Color
from dbo.Colors

-- 3. z wybranie wszystkich klientów z miasta "Warszawa"
select *
from dbo.Client
where City = 'Warszawa'

-- 4. z wybranie wszystkich specyfikacji samochodów, które posiadają hak holowniczy
select *
from dbo.CarSpecification
where Towbar = 1

-- 5. z wybranie wszystkich specyfikacji samochodów, które posiadają hak holowniczy
select *
from dbo.CarSpecification
where Towbar = 1

-- 6. z wybranie wszystkich modeli samochodów, tworzonych w latach 2015 do dzisiaj
select *
from dbo.CarModels
where YEAR(ManufacturedFrom) >= 2014
  AND (Year(ManufacturedTo) <= 2017 OR ManufacturedTo is null)

-- 7. z wybranie wszystkich specyfikacji samochodów z bagażnikiem większym niż 400l
select *
from dbo.CarSpecification
where TrunkCapacity > 400

-- 8. z wybranie wszystkich producentów
select *
from dbo.Brands

-- 9. wybranie wszystkich zamówień posortowanych malejąco
select *
from dbo.[Order]
order by SummaryPrice desc

-- 10. wybranie wszystkich zamówień z obecnego miesiąca
select *
from dbo.[Order]
where MONTH(OrderDate) = MONTH(GETDATE())
  And Year(OrderDate) = YEAR(GETDATE())

-- 11. wybranie wszystkich silników które mają więcej niż 4 cylindry
select *
from dbo.[Engine]
where NumberOfCylinders > 4

-- 12. wybranie wszystkich silników które mają powyżej 250KM
select *
from dbo.[Engine]
where Power > 250