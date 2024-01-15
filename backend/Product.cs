// Product.cs
public class Product
{
    public int Id { get; set; }
    public  string? Name { get; set; }
    public decimal Price { get; set; }
    public string? Description { get; set; }
    public string? Thumbnail { get; set; }
    public List<Comment>? Comments { get; set; }
    public List<Image>? Images { get; set; }
}
