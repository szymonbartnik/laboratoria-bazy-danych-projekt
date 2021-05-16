using System;
using System.Collections.Generic;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class Brand : BaseEntity
	{
		public string Name { get; set; }

		public ICollection<CarModel> CarModels { get; set; }
		
		public ICollection<Car> Cars { get; set; }
		public Guid Id { get; set; }
	}
}
