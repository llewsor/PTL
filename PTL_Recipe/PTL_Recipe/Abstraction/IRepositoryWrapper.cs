namespace Abstraction
{
	public interface IRepositoryWrapper
	{
		IRecipeRepository Recipe {  get; }
		Task Save();
	}
}
