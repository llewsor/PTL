using Abstraction;
using Entity.Models;
using Microsoft.EntityFrameworkCore;

namespace Business.Services
{
    public class RecipeService : IRecipeService
	{
		private readonly IRepositoryWrapper _repo;

		public RecipeService(IRepositoryWrapper repo)
		{
			_repo = repo;
		}

		public async Task AddRecipeAsync(Recipe recipe)
		{
			_repo.Recipe.Add(recipe);
			await _repo.Save();
		}

		public async Task DeleteRecipeAsync(string id)
		{
			var recipe = await _repo.Recipe.GetByCondition(x => x.Id == id);
			
			if (recipe != null)
			{
				recipe.Active = false;
				_repo.Recipe.Update(recipe);
				await _repo.Save();
			}
		}

        public async Task<bool> ExistAsync(string id)
        {
            return await _repo.Recipe.Exists(x => x.Id == id && x.Active);
        }

        public async Task<IEnumerable<Recipe>> GetAllRecipesAsync()
		{
			return await _repo.Recipe.FindByCondition(x => x.Active).ToListAsync();
		}

		public async Task<Recipe> GetRecipeByIdAsync(string id)
		{
			return await _repo.Recipe.GetByCondition(x => x.Id == id && x.Active);
		}

		public async Task UpdateRecipeAsync(Recipe recipe)
		{
			_repo.Recipe.Update(recipe);
			await _repo.Save();
		}
	}
}
