using System;
using System.Collections.Generic;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class Car : BaseEntity
	{
		public Brand Brand { get; set; }
		
		public Guid BrandId { get; set; }
		
		public Color Color { get; set; }
		
		public Guid ColorId { get; set; }
		
		public Engine Engine { get; set; }
		
		public Guid EngineId { get; set; }
		
		public CarModel CarModel { get; set; }
		
		public Guid CarModelId { get; set; }

		public string VehicleIdentificationNumber { get; set; }
		
		public DateTime ProductionDate { get; set; }
		
		public List<Order> Orders { get; set; }
		public Guid Id { get; set; }
	}
}
