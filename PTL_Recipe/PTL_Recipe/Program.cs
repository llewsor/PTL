using Abstraction;
using Business.Services;
using Entity.Repositories;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using PTL_Recipe.Areas.Identity.Data;
using PTL_Recipe.Data;
using PTL_Recipe.Entity;

var builder = WebApplication.CreateBuilder(args);
var authConnectionString = builder.Configuration.GetConnectionString("AuthDbContextConnection") ?? throw new InvalidOperationException("Connection string 'AuthDbContextConnection' not found.");
var appConnectionString = builder.Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");

builder.Services.AddDbContext<AuthDbContext>(options => options.UseSqlServer(authConnectionString));
builder.Services.AddDbContext<ApplicationContext>(options => options.UseSqlServer(appConnectionString));

builder.Services.AddDefaultIdentity<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = true).AddEntityFrameworkStores<AuthDbContext>();

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();

//Register Scope
builder.Services.AddScoped<IRepositoryWrapper, RepositoryWrapper>();
builder.Services.AddScoped<IRecipeService, RecipeService>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
	app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
	name: "default",
	pattern: "{controller=Recipe}/{action=Index}/{id?}");

app.MapRazorPages();

using (var scope = app.Services.CreateScope())
{
    var services = scope.ServiceProvider;

    try
    {
        var userManager = services.GetRequiredService<UserManager<ApplicationUser>>();
        var configuration = services.GetRequiredService<IConfiguration>();

        var username = configuration["DefaultUser:Username"];
        var password = configuration["DefaultUser:Password"];

        var defaultUser = new ApplicationUser { UserName = username, Email = username, EmailConfirmed = true };

        var user = await userManager.FindByNameAsync(defaultUser.UserName);
        if (user == null)
        {
            await userManager.CreateAsync(defaultUser, password);
        }
    }
    catch (Exception ex)
    {
        var logger = services.GetRequiredService<ILogger<Program>>();
        logger.LogError(ex, "An error occurred creating the default user.");
    }
}

app.Run();