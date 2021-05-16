using System;
using System.Collections.Generic;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class Order : BaseEntity
	{
		public List<Car> Cars { get; set; }

		public List<Guid> CarIds { get; set; }

		public decimal SummaryPrice { get; set; }

		public DateTime OrderDate { get; set; }

		public Client Client { get; set; }

		public Guid ClientId { get; set; }
		public Guid Id { get; set; }
	}
}
