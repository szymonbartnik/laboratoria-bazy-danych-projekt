using System;
using Microsoft.EntityFrameworkCore;
using sbartnik.laboratorium.bazy.danych.Database.Entities;

namespace sbartnik.laboratorium.bazy.danych.Database
{
	public class ApplicationDbContext : DbContext
	{
		public DbSet<Brand> Brands { get; set; }
		public DbSet<Car> Cars { get; set; }
		public DbSet<CarModel> CarModels { get; set; }
		public DbSet<Color> Colors { get; set; }
		protected override void OnConfiguring(DbContextOptionsBuilder options)
			=> options.UseSqlServer(@"Data Source=.\SQLEXPRESS;Database=cars;Persist Security Info=True;Integrated security = true;MultipleActiveResultSets=False;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False");
		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			//Brand
			modelBuilder.Entity<Brand>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<Brand>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<Brand>()
				.HasIndex(x => x.Name)
				.IsUnique();

			modelBuilder.Entity<Brand>()
				.Property(x => x.Name)
				.HasMaxLength(50);

			modelBuilder.Entity<Brand>()
				.Property(s => s.Name)
				.IsRequired();

			modelBuilder.Entity<Brand>()
				.HasMany(s => s.CarModels)
				.WithOne(x => x.Brand)
				.IsRequired();

			modelBuilder.Entity<Brand>()
				.HasMany(s => s.Cars)
				.WithOne(x => x.Brand)
				.IsRequired();

			//Car
			modelBuilder.Entity<Car>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<Car>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<Car>()
				.HasOne(s => s.Brand)
				.WithMany(x => x.Cars)
				.IsRequired();

			modelBuilder.Entity<Car>()
				.HasOne(x => x.Engine)
				.WithMany(x => x.Cars);

			modelBuilder.Entity<Car>()
				.HasOne(x => x.Color)
				.WithMany(x => x.Cars);

			modelBuilder.Entity<Car>()
				.HasOne(s => s.CarModel)
				.WithMany(x => x.Cars)
				.IsRequired();

			modelBuilder.Entity<Car>()
				.HasMany(s => s.Orders)
				.WithMany(x => x.Cars);

			modelBuilder.Entity<Car>()
				.Property(s => s.ProductionDate)
				.IsRequired();

			modelBuilder.Entity<Car>()
				.Property(s => s.VehicleIdentificationNumber)
				.HasMaxLength(17)
				.IsRequired();

			//Car Model
			modelBuilder.Entity<CarModel>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<CarModel>()
				.HasIndex("Name", "BrandId")
				.IsUnique();

			modelBuilder.Entity<CarModel>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<CarModel>()
				.HasMany(x => x.Cars)
				.WithOne(x => x.CarModel)
				.OnDelete(DeleteBehavior.NoAction);

			modelBuilder.Entity<CarModel>()
				.HasOne(x => x.CarSpecification)
				.WithOne(x => x.CarModel)
				.HasForeignKey<CarModel>(x => x.CarSpecificationId)
				.IsRequired(false)
				.OnDelete(DeleteBehavior.NoAction);

			modelBuilder.Entity<CarModel>()
				.HasMany(x => x.Engines)
				.WithMany(x => x.CarModels);

			modelBuilder.Entity<CarModel>()
				.HasOne(x => x.Brand)
				.WithMany(x => x.CarModels);

			modelBuilder.Entity<CarModel>()
				.Property(x => x.Name)
				.HasMaxLength(50)
				.IsRequired();

			modelBuilder.Entity<CarModel>()
				.Property(x => x.ManufacturedFrom)
				.IsRequired();

			//Car Specification
			modelBuilder.Entity<CarSpecification>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<CarSpecification>()
				.HasOne(x => x.CarModel)
				.WithOne(x => x.CarSpecification)
				.IsRequired(false)
				.OnDelete(DeleteBehavior.NoAction);

			modelBuilder.Entity<CarSpecification>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<CarSpecification>()
				.Property(x => x.Height)
				.IsRequired();

			modelBuilder.Entity<CarSpecification>()
				.Property(x => x.Width)
				.IsRequired();

			modelBuilder.Entity<CarSpecification>()
				.Property(x => x.Weight)
				.IsRequired();

			modelBuilder.Entity<CarSpecification>()
				.Property(x => x.Towbar)
				.IsRequired();

			modelBuilder.Entity<CarSpecification>()
				.Property(x => x.NumberOfDoors)
				.IsRequired();

			modelBuilder.Entity<CarSpecification>()
				.Property(x => x.TrunkCapacity)
				.IsRequired();

			// Client
			modelBuilder.Entity<Client>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<Client>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<Client>()
				.HasMany(x => x.Orders)
				.WithOne(x => x.Client);

			modelBuilder.Entity<Client>()
				.HasOne(x => x.ContactInformation)
				.WithOne(x => x.Client)
				.IsRequired(false);

			modelBuilder.Entity<Client>()
				.Property(x => x.City)
				.IsRequired();

			modelBuilder.Entity<Client>()
				.Property(x => x.Country)
				.IsRequired();

			modelBuilder.Entity<Client>()
				.Property(x => x.Name)
				.IsRequired();

			modelBuilder.Entity<Client>()
				.Property(x => x.Surname)
				.IsRequired();

			modelBuilder.Entity<Client>()
				.Property(x => x.Street)
				.IsRequired();

			modelBuilder.Entity<Client>()
				.Property(x => x.Street)
				.IsRequired();

			// Color
			modelBuilder.Entity<Color>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<Color>()
				.HasIndex(x => x.Code)
				.IsUnique();

			modelBuilder.Entity<Color>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<Color>()
				.HasMany(x => x.Cars)
				.WithOne(x => x.Color);

			modelBuilder.Entity<Color>()
				.HasMany(x => x.CarModels)
				.WithMany(x => x.Colors);

			modelBuilder.Entity<Color>()
				.Property(x => x.Code)
				.IsRequired();

			modelBuilder.Entity<Color>()
				.Property(x => x.Name)
				.IsRequired();

			// ContactInformation
			modelBuilder.Entity<ContactInformation>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<ContactInformation>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<ContactInformation>()
				.HasOne(x => x.Client)
				.WithOne(x => x.ContactInformation)
				.IsRequired(false);

			modelBuilder.Entity<ContactInformation>()
				.Property(x => x.Email)
				.IsRequired();

			modelBuilder.Entity<ContactInformation>()
				.Property(x => x.MobileNumber)
				.IsRequired();

			// Engine
			modelBuilder.Entity<Engine>()
				.HasKey(x => x.Id);


			modelBuilder.Entity<Engine>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<Engine>()
				.Property(x => x.Name)
				.IsRequired();

			modelBuilder.Entity<Engine>()
				.Property(x => x.NumberOfCylinders)
				.IsRequired();

			modelBuilder.Entity<Engine>()
				.HasMany(x => x.CarModels)
				.WithMany(x => x.Engines);

			modelBuilder.Entity<Engine>()
				.HasMany(x => x.Cars)
				.WithOne(x => x.Engine);

			modelBuilder.Entity<Engine>()
				.Property(x => x.Power)
				.IsRequired();

			modelBuilder.Entity<Engine>()
				.Property(x => x.Torque)
				.IsRequired();

			// Order
			modelBuilder.Entity<Order>()
				.HasKey(x => x.Id);

			modelBuilder.Entity<Order>()
				.Property(x => x.Id)
				.HasDefaultValueSql("NEWID()");

			modelBuilder.Entity<Order>()
				.Ignore(x => x.CarIds);

			modelBuilder.Entity<Order>()
				.HasMany(x => x.Cars)
				.WithMany(x => x.Orders);

			modelBuilder.Entity<Order>()
				.HasOne(x => x.Client)
				.WithMany(x => x.Orders);

			modelBuilder.Entity<Order>()
				.Property(x => x.OrderDate)
				.IsRequired();

			modelBuilder.Entity<Order>()
				.Property(x => x.SummaryPrice)
				.IsRequired();
		}
		public DbSet<sbartnik.laboratorium.bazy.danych.Database.Entities.CarSpecification> CarSpecification { get; set; }
		public DbSet<sbartnik.laboratorium.bazy.danych.Database.Entities.Engine> Engine { get; set; }
		public DbSet<sbartnik.laboratorium.bazy.danych.Database.Entities.Client> Client { get; set; }
		public DbSet<sbartnik.laboratorium.bazy.danych.Database.Entities.ContactInformation> ContactInformation { get; set; }
		public DbSet<sbartnik.laboratorium.bazy.danych.Database.Entities.Order> Order { get; set; }
	}
}
