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
        optionsBuilder.UseSqlite("Data Source=sait.db");
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
         // Configure relationships between Product and Image entities
        modelBuilder.Entity<Comment>()
            .HasOne(c => c.Product)
            .WithMany(p => p.Comments)
            .HasForeignKey(c => c.Productid);

        modelBuilder.Entity<Image>()
            .HasOne(i => i.Product)
            .WithMany(p => p.Images)
            .HasForeignKey(i => i.Productid);

        // Add any other configurations as needed
    }
}
