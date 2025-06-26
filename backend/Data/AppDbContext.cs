using Microsoft.EntityFrameworkCore;
using WebApi.Models;

namespace WebApi.Data
{
    /// <summary>
    /// EF Core database context for the application.
    /// </summary>
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Person> Persons => Set<Person>();
    }
}
