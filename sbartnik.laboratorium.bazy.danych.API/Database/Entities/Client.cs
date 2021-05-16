using System;
using System.Collections.Generic;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class Client : BaseEntity
	{
		public string Name { get; set; }
		
		public List<Order> Orders { get; set; }
		
		public string Surname { get; set; }
		
		public string City { get; set; }
		
		public string Street { get; set; }
		
		public string PostalCode { get; set; }
		
		public string Country { get; set; }
		
		public ContactInformation ContactInformation { get; set; }
		public Guid Id { get; set; }
	}
}
