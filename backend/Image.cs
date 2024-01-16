// Image.cs
public class Image
{
    public int? Id { get; set; }
    public string? Url { get; set; }
    
    // Foreign key for Product

    public int? Productid { get; set; }
    public Product? Product { get; set; }
}
