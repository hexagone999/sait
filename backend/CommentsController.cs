// ProductsController.cs
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

[ApiController]
[Route("api/comments")]
public class CommentsController : ControllerBase
{
    private readonly AppDbContext _context;

    public CommentsController(AppDbContext context)
    {
        _context = context;
    }
    [EnableCors()]
    [HttpPost]
        public IActionResult PostComment([FromBody] Comment comment)
        {   
            Console.WriteLine("PostComment");
            Console.WriteLine(comment);
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                // Validate product ID
                Console.WriteLine("try");
                Console.WriteLine(comment.Productid);
                Console.WriteLine(comment.Text);
                var product = _context.PRODUCT.FirstOrDefault(p => p.Id == comment.Productid);
                if (product == null)
                {
                    return NotFound("Product not found");
                }
Console.WriteLine(product);
                comment.Date = DateTime.Now;
               
                _context.COMMENT.Add(comment);
                _context.SaveChanges();

                return Ok("Comment posted successfully");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }
    
}