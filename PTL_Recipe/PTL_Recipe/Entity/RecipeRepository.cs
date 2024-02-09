using Abstraction;
using Entity.Models;
using PTL_Recipe.Entity;

namespace Entity.Repositories
{
    public class RecipeRepository : BaseRepository<Recipe>, IRecipeRepository
    {
		public RecipeRepository(ApplicationContext context) : base(context) { }
	}
}
