// ProductsController.cs
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

[ApiController]
[Route("api/products")]
public class ProductsController : ControllerBase
{
    private readonly AppDbContext _context;

    public ProductsController(AppDbContext context)
    {
        _context = context;
    }
    [EnableCors()]
    [HttpGet]
    public ActionResult<IEnumerable<Product>> GetAllProducts()
    {
    
        var products = _context.PRODUCT
            .Select(p => new Product
            {
                Id = p.Id,
                Name = p.Name,
                Price = p.Price,
                Description = p.Description,
                Thumbnail = p.Thumbnail,
            })
            .ToList();

        return Ok(products);
    }

    [EnableCors()]
    [HttpGet("{id}")]
    public ActionResult<Product> GetSingleProduct(int id)
    {
        
        var productWithComments = _context.PRODUCT
            .Include(p => p.Comments)
            .Include(p => p.Images)
            .Select(p => new Product
            {
                Id = p.Id,
                Name = p.Name,
                Price = p.Price,
                Description = p.Description,
                Thumbnail = p.Thumbnail,     
            })
            .FirstOrDefault(p => p.Id == id);
      
          
        if (productWithComments == null)
        {
            return NotFound(); // Return 404 if the product is not found
        }
          
        var Comments = _context.COMMENT
            .Select(c => new Comment
            {
                Id = c.Id,
                Author = c.Author,
                Date= c.Date,
                Text = c.Text,
                Productid = c.Productid,
            })
            .ToList()
            .Where(c => c.Productid == id)
            .ToList();
        productWithComments.Comments = Comments;   

        var Images = _context.IMAGE
            .Select(i => new Image
            {
                Id = i.Id,
                Url = i.Url,
                Productid = i.Productid,
            })
            .ToList()
            .Where(i => i.Productid == id)
            .ToList();
        productWithComments.Images = Images;
          
        return Ok(productWithComments);
    }
}