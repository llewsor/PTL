using Entity.Models;
using Microsoft.EntityFrameworkCore;

namespace PTL_Recipe.Entity
{
    public class ApplicationContext : DbContext
    {
        public ApplicationContext(DbContextOptions options) : base(options) { }

        public DbSet<Recipe> Recipes { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Cuisine> Cuisine { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Recipe>().HasData(
                new Recipe
                {
                    Name = "Test 1",
                    Category = "Test 1",
                    Cuisine = "Test 1",
                    Description = "Test 1",
                    Ingreditents = "Ingreditents 1, Ingreditents 2, Ingreditents 3, Ingreditents 4, Ingreditents 5, Ingreditents 6"
                },
                new Recipe
                {
                    Name = "Test 2",
                    Category = "Test 2",
                    Cuisine = "Test 2",
                    Description = "Test 2",
                    Ingreditents = "Ingreditents 11, Ingreditents 22, Ingreditents 33, Ingreditents 44, Ingreditents 55, Ingreditents 66"
                },
                new Recipe
                {
                    Name = "Test 3",
                    Category = "Test 3",
                    Cuisine = "Test 3",
                    Description = "Test 3",
                    Ingreditents = "Ingreditents 111, Ingreditents 222, Ingreditents 333, Ingreditents 444, Ingreditents 555, Ingreditents 666"
                });
        }
    }
}
