// AppDbContext.cs
using Microsoft.EntityFrameworkCore;
public class AppDbContext : DbContext
{
    public DbSet<Product> PRODUCT { get; set; }
    public DbSet<Comment> COMMENT { get; set; }
    public DbSet<Image> IMAGE { get; set; }

    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        // Replace "YourSQLiteConnectionString" with your actual SQLite connection string
        optionsBuilder.UseSqlite("Data Source=sait.db");
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        Console.WriteLine("OnModelCreating");
         // Configure relationships between Product and Image entities
        modelBuilder.Entity<Image>()
            .HasOne(i => i.Product)
            .WithMany(p => p.Images)
            .HasForeignKey(i => i.ProductId);
        // Configure relationships between Product and Comment entities
        modelBuilder.Entity<Comment>()
            .HasOne(c => c.Product)
            .WithMany(p => p.Comments)
            .HasForeignKey(c => c.ProductId);

       
    Console.WriteLine("OnModelCreating finished");
        // Add any other configurations as needed
    }
}
