using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace PTL_Recipe.Migrations.Application
{
    /// <inheritdoc />
    public partial class init : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Active = table.Column<bool>(type: "bit", nullable: false),
                    DateCreated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Cuisine",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Active = table.Column<bool>(type: "bit", nullable: false),
                    DateCreated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cuisine", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Recipes",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(300)", maxLength: 300, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(300)", maxLength: 300, nullable: false),
                    Ingreditents = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Category = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Cuisine = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Active = table.Column<bool>(type: "bit", nullable: false),
                    DateCreated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Recipes", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Recipes",
                columns: new[] { "Id", "Active", "Category", "Cuisine", "DateCreated", "Description", "Ingreditents", "Name" },
                values: new object[,]
                {
                    { "59bc5c4f-0497-4cc7-8b26-2c7a24ebba72", true, "Test 1", "Test 1", new DateTime(2024, 2, 9, 10, 22, 2, 6, DateTimeKind.Local).AddTicks(1925), "Test 1", "Ingreditents 1, Ingreditents 2, Ingreditents 3, Ingreditents 4, Ingreditents 5, Ingreditents 6", "Test 1" },
                    { "5fbb2ef4-6eae-4dd1-bf7b-12f5461c8d04", true, "Test 2", "Test 2", new DateTime(2024, 2, 9, 10, 22, 2, 6, DateTimeKind.Local).AddTicks(1975), "Test 2", "Ingreditents 11, Ingreditents 22, Ingreditents 33, Ingreditents 44, Ingreditents 55, Ingreditents 66", "Test 2" },
                    { "c234b821-20d2-4182-8c4f-f506eb08a093", true, "Test 3", "Test 3", new DateTime(2024, 2, 9, 10, 22, 2, 6, DateTimeKind.Local).AddTicks(1982), "Test 3", "Ingreditents 111, Ingreditents 222, Ingreditents 333, Ingreditents 444, Ingreditents 555, Ingreditents 666", "Test 3" }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Categories");

            migrationBuilder.DropTable(
                name: "Cuisine");

            migrationBuilder.DropTable(
                name: "Recipes");
        }
    }
}
