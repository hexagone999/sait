// ProductsController.cs
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

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
       Console.WriteLine("GetAllProducts");
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

        products.ForEach(p =>
        {
            Console.WriteLine(p.Name);
        });
        return Ok(products);
    }

    [EnableCors()]
    [HttpGet("{id}")]
    public ActionResult<Product> GetSingleProduct(int id)
    {
        
        var productWithComments = _context.PRODUCT
            .Select(p => new Product
            {
                Id = p.Id,
                Name = p.Name,
                Price = p.Price,
                Description = p.Description,
                Thumbnail = p.Thumbnail,     
            })
            .FirstOrDefault(p => p.Id == id);
        
        var Comments = _context.COMMENT
            .Select(c => new Comment
            {
                Id = c.Id,
                Author = c.Author,
                Date= c.Date,
                Text = c.Text,
                ProductId = c.ProductId,
            })
            .ToList();
          

           
        Console.WriteLine("GetSingleProduct");
        if (productWithComments == null)
        {
            return NotFound(); // Return 404 if the product is not found
        }
        productWithComments.Comments = Comments;     
        return Ok(productWithComments);
    }
}