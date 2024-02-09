using Abstraction;
using PTL_Recipe.Entity;

namespace Entity.Repositories
{
    public class RepositoryWrapper(ApplicationContext context) : IRepositoryWrapper
	{
		private ApplicationContext _context = context;
		private IRecipeRepository _recipeRepository;

		public IRecipeRepository Recipe
		{
			get
			{
				if (_recipeRepository == null)
					_recipeRepository = new RecipeRepository(_context);

				return _recipeRepository;
			}
		}

		public async Task Save()
		{
			await _context.SaveChangesAsync();
		}
	}
}
