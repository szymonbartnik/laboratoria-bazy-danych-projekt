using System;
using System.Collections.Generic;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class CarModel : BaseEntity
	{
		private BaseEntity _baseEntityImplementation;
		public string Name { get; set; }
		
		public List<Car> Cars { get; set; }
		
		public List<Engine> Engines { get; set; }
		
		public List<Color> Colors { get; set; }
		
		public CarSpecification CarSpecification { get; set; }
		
		public Guid? CarSpecificationId { get; set; }
		
		public Brand Brand { get; set; }
		
		public virtual Guid BrandId { get; set; }
		
		public DateTime ManufacturedFrom { get; set; }
		
		public DateTime? ManufacturedTo { get; set; }
		public Guid Id { get; set; }
	}
}
