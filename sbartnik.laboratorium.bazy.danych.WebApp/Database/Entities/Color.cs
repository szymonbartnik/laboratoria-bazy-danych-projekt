using System;
using System.Collections.Generic;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class Color : BaseEntity
	{
		public string Name { get; set; }
		
		public string Code { get; set; }
		
		public List<CarModel> CarModels { get; set; }
		public List<Car> Cars { get; set; }
		public Guid Id { get; set; }
	}
}
