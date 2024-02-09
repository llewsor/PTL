using System.ComponentModel.DataAnnotations;

namespace Entity.Models
{
	/// <summary>
	/// Recipe Database Model
	/// </summary>
	public class Recipe
	{
		[Key]
		[Required]
		public string Id { get; set; } = Guid.NewGuid().ToString();

		[Required]
		[MaxLength(300)]
		public string Name { get; set; }

		[Required]
		[MaxLength(300)]
		public string Description { get; set; }

		[Required]
		public string Ingreditents { get; set; }

		[Required]
		[MaxLength(50)]
		public string Category { get; set; }

		[Required]
		[MaxLength(50)]
		public string Cuisine { get; set; }

		[Required]
		public bool Active { get; set; } = true;

		[Required]
		public DateTime DateCreated { get; set; } = DateTime.Now;
	}
}
