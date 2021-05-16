using System;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class CarSpecification : BaseEntity
	{
		public CarModel CarModel { get; set; }
		public Guid CarModelId { get; set; }
		public int NumberOfDoors { get; set; }
		
		public int TrunkCapacity { get; set; }
		
		public bool Towbar { get; set; }
		
		public double Weight { get; set; }
		
		public double Height { get; set; }
		
		public double Width { get; set; }
		public Guid Id { get; set; }
	}
}
