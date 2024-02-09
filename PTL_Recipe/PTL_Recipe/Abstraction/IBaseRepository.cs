using System.Linq.Expressions;

namespace Abstraction
{
	public interface IBaseRepository<T>
	{
		IQueryable<T> FindAll();
		IQueryable<T> FindByCondition(Expression<Func<T,bool>> expression);
		Task<T?> GetByCondition(Expression<Func<T, bool>> expression);
		void Add(T entity);
		void Update(T entity);
		void Delete(T entity);
		Task<bool> Exists(Expression<Func<T, bool>> expression);
    }
}
