using Abstraction;
using Entity.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace PTL_Recipe.Controllers
{
    public class RecipeController : Controller
    {
        private readonly IRecipeService _recipeService;
        
        public RecipeController(IRecipeService recipeService) 
        { 
            _recipeService = recipeService; 
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            return View(await _recipeService.GetAllRecipesAsync());
        }

        [HttpGet]
        public async Task<IActionResult> Details(string id)
        {
            if (string.IsNullOrEmpty(id))
                return NotFound();

            var recipe = await _recipeService.GetRecipeByIdAsync(id);
            if (recipe == null)
            {
                return NotFound();
            }

            return View(recipe);
        }

        [HttpGet]
        [Authorize]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
		[Authorize]
		public async Task<IActionResult> Create(Recipe recipe)
        {
            if (ModelState.IsValid)
            {
                await _recipeService.AddRecipeAsync(recipe);
                return RedirectToAction(nameof(Index));
            }

            return View(recipe);
        }

        [HttpGet]
		[Authorize]
		public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var recipe = await _recipeService.GetRecipeByIdAsync(id);
            if (recipe == null)
            {
                return NotFound();
            }
            return View(recipe);
        }

        [HttpPost]
		[Authorize]
        [ValidateAntiForgeryToken]
		public async Task<IActionResult> Edit(Recipe recipe)
        {
            if (recipe == null || string.IsNullOrEmpty(recipe.Id))
                return NotFound();

            if (ModelState.IsValid)
            {
                try
                {
                    await _recipeService.UpdateRecipeAsync(recipe);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!await _recipeService.ExistAsync(recipe.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }

            return View(recipe);
        }

		[Authorize]
		public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var recipe = await _recipeService.GetRecipeByIdAsync(id);
            if (recipe == null)
            {
                return NotFound();
            }

            return View(recipe);
        }

        [HttpPost, ActionName("Delete")]
		[Authorize]
		[ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            await _recipeService.DeleteRecipeAsync(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
