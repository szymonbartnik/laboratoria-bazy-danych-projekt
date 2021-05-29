using System;
using System.Collections.Generic;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class Engine : BaseEntity
	{
		public List<CarModel> CarModels { get; set; }
		public List<Car> Cars { get; set; }
		
		public string Name { get; set; }
		
		// capacity in cm3
		public double EngineCapacity { get; set; }
		
		public double Power { get; set; }
		
		public double Torque { get; set; }
		
		public int NumberOfCylinders { get; set; }
		public Guid Id { get; set; }
	}
}
