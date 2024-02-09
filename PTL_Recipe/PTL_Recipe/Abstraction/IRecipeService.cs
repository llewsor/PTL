using Entity.Models;

namespace Abstraction
{
    public interface IRecipeService
	{
		Task<IEnumerable<Recipe>> GetAllRecipesAsync();
		Task<Recipe> GetRecipeByIdAsync(string id);
		Task AddRecipeAsync(Recipe recipe);
		Task UpdateRecipeAsync(Recipe recipe);
        Task DeleteRecipeAsync(string id);
        Task<bool> ExistAsync(string id);
    }
}
