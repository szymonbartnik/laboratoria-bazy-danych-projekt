﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using sbartnik.laboratorium.bazy.danych.Database;

namespace sbartnik.laboratorium.bazy.danych.Database.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    partial class ApplicationDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.6")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("CarModelColor", b =>
                {
                    b.Property<Guid>("CarModelsId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("ColorsId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("CarModelsId", "ColorsId");

                    b.HasIndex("ColorsId");

                    b.ToTable("CarModelColor");
                });

            modelBuilder.Entity("CarModelEngine", b =>
                {
                    b.Property<Guid>("CarModelsId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("EnginesId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("CarModelsId", "EnginesId");

                    b.HasIndex("EnginesId");

                    b.ToTable("CarModelEngine");
                });

            modelBuilder.Entity("CarOrder", b =>
                {
                    b.Property<Guid>("CarsId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("OrdersId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("CarsId", "OrdersId");

                    b.HasIndex("OrdersId");

                    b.ToTable("CarOrder");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Brand", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Id");

                    b.HasIndex("Name")
                        .IsUnique();

                    b.ToTable("Brands");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Car", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<Guid>("BrandId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("CarModelId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("ColorId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("EngineId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime>("ProductionDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("VehicleIdentificationNumber")
                        .IsRequired()
                        .HasMaxLength(17)
                        .HasColumnType("nvarchar(17)");

                    b.HasKey("Id");

                    b.HasIndex("BrandId");

                    b.HasIndex("CarModelId");

                    b.HasIndex("ColorId");

                    b.HasIndex("EngineId");

                    b.ToTable("Cars");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.CarModel", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<Guid>("BrandId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CarSpecificationId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime>("ManufacturedFrom")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("ManufacturedTo")
                        .HasColumnType("datetime2");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Id");

                    b.HasIndex("BrandId");

                    b.HasIndex("CarSpecificationId")
                        .IsUnique()
                        .HasFilter("[CarSpecificationId] IS NOT NULL");

                    b.HasIndex("Name", "BrandId")
                        .IsUnique();

                    b.ToTable("CarModels");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.CarSpecification", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<Guid>("CarModelId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<double>("Height")
                        .HasColumnType("float");

                    b.Property<int>("NumberOfDoors")
                        .HasColumnType("int");

                    b.Property<bool>("Towbar")
                        .HasColumnType("bit");

                    b.Property<int>("TrunkCapacity")
                        .HasColumnType("int");

                    b.Property<double>("Weight")
                        .HasColumnType("float");

                    b.Property<double>("Width")
                        .HasColumnType("float");

                    b.HasKey("Id");

                    b.ToTable("CarSpecification");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Client", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<string>("City")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Country")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PostalCode")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Street")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Surname")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Client");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Color", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<string>("Code")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("Code")
                        .IsUnique();

                    b.ToTable("Colors");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.ContactInformation", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<Guid>("ClientId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("MobileNumber")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("ClientId")
                        .IsUnique();

                    b.ToTable("ContactInformation");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Engine", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<double>("EngineCapacity")
                        .HasColumnType("float");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("NumberOfCylinders")
                        .HasColumnType("int");

                    b.Property<double>("Power")
                        .HasColumnType("float");

                    b.Property<double>("Torque")
                        .HasColumnType("float");

                    b.HasKey("Id");

                    b.ToTable("Engine");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Order", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier")
                        .HasDefaultValueSql("NEWID()");

                    b.Property<Guid>("ClientId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime>("OrderDate")
                        .HasColumnType("datetime2");

                    b.Property<decimal>("SummaryPrice")
                        .HasColumnType("decimal(18,2)");

                    b.HasKey("Id");

                    b.HasIndex("ClientId");

                    b.ToTable("Order");
                });

            modelBuilder.Entity("CarModelColor", b =>
                {
                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.CarModel", null)
                        .WithMany()
                        .HasForeignKey("CarModelsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Color", null)
                        .WithMany()
                        .HasForeignKey("ColorsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("CarModelEngine", b =>
                {
                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.CarModel", null)
                        .WithMany()
                        .HasForeignKey("CarModelsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Engine", null)
                        .WithMany()
                        .HasForeignKey("EnginesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("CarOrder", b =>
                {
                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Car", null)
                        .WithMany()
                        .HasForeignKey("CarsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Order", null)
                        .WithMany()
                        .HasForeignKey("OrdersId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Car", b =>
                {
                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Brand", "Brand")
                        .WithMany("Cars")
                        .HasForeignKey("BrandId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.CarModel", "CarModel")
                        .WithMany("Cars")
                        .HasForeignKey("CarModelId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Color", "Color")
                        .WithMany("Cars")
                        .HasForeignKey("ColorId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Engine", "Engine")
                        .WithMany("Cars")
                        .HasForeignKey("EngineId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Brand");

                    b.Navigation("CarModel");

                    b.Navigation("Color");

                    b.Navigation("Engine");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.CarModel", b =>
                {
                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Brand", "Brand")
                        .WithMany("CarModels")
                        .HasForeignKey("BrandId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.CarSpecification", "CarSpecification")
                        .WithOne("CarModel")
                        .HasForeignKey("sbartnik.laboratorium.bazy.danych.Database.Entities.CarModel", "CarSpecificationId")
                        .OnDelete(DeleteBehavior.NoAction);

                    b.Navigation("Brand");

                    b.Navigation("CarSpecification");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.ContactInformation", b =>
                {
                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Client", "Client")
                        .WithOne("ContactInformation")
                        .HasForeignKey("sbartnik.laboratorium.bazy.danych.Database.Entities.ContactInformation", "ClientId");

                    b.Navigation("Client");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Order", b =>
                {
                    b.HasOne("sbartnik.laboratorium.bazy.danych.Database.Entities.Client", "Client")
                        .WithMany("Orders")
                        .HasForeignKey("ClientId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Client");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Brand", b =>
                {
                    b.Navigation("CarModels");

                    b.Navigation("Cars");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.CarModel", b =>
                {
                    b.Navigation("Cars");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.CarSpecification", b =>
                {
                    b.Navigation("CarModel");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Client", b =>
                {
                    b.Navigation("ContactInformation");

                    b.Navigation("Orders");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Color", b =>
                {
                    b.Navigation("Cars");
                });

            modelBuilder.Entity("sbartnik.laboratorium.bazy.danych.Database.Entities.Engine", b =>
                {
                    b.Navigation("Cars");
                });
#pragma warning restore 612, 618
        }
    }
}
