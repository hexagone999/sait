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

            // Define relationships
        modelBuilder.Entity<Comment>()
            .HasOne(c => c.Product)
            .WithMany(p => p.Comments)
            .HasForeignKey(c => c.ProductId)
            .OnDelete(DeleteBehavior.Cascade); // Optional: Cascade delete for comments when a product is deleted

        modelBuilder.Entity<Image>()
            .HasOne(i => i.Product)
            .WithMany(p => p.Images)
            .HasForeignKey(i => i.ProductId)
            .OnDelete(DeleteBehavior.Cascade); // Optional: Cascade delete for images when a product is deleted

       
    

        base.OnModelCreating(modelBuilder);
        Console.WriteLine("OnModelCreating finished");
        // Add any other configurations as needed
    }
}
