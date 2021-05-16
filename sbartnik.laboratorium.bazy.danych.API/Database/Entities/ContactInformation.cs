using System;

namespace sbartnik.laboratorium.bazy.danych.Database.Entities
{
	public class ContactInformation : BaseEntity
	{
		public Client Client { get; set; }
		
		public Guid ClientId { get; set; }
		
		public int MobileNumber { get; set; }
		
		public string Email { get; set; }
		public Guid Id { get; set; }
	}
}
