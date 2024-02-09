using System.ComponentModel.DataAnnotations;

namespace Entity.Models
{
	/// <summary>
	/// Cuisine Database Model
	/// </summary>
	public class Cuisine
	{
		[Key]
		[Required]
		public string Id { get; set; } = Guid.NewGuid().ToString();

		[Required]
		public string Name { get; set; }

		public string Description { get; set; }

		[Required]
		public bool Active { get; set; } = true;

		[Required]
		public DateTime DateCreated { get; set; } = DateTime.Now;
	}
}
