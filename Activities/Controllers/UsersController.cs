using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Activities.Data;
using Activities.Models;

namespace Activities.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly ActivitiesContext _context;

        public UsersController(ActivitiesContext context)
        {
            _context = context;
        }

        // GET: api/Users
        [HttpGet]
        public IEnumerable<User> GetUser()
        {
            return _context.User;
        }



        // GET: api/Users/participants?activity=ActivityName
        [HttpGet]
        [Route("participants")]
        public async Task<IActionResult> GetUser([FromQuery] string activity)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var users = await Task.FromResult(_context.User.Where(x => x.Activity == activity));

            if (users == null)
            {
                return NotFound();
            }

            return Ok(users);
        }

        // POST: api/Users
        [HttpPost]
        public async Task<IActionResult> PostUser([FromBody] User user)
        {
            if (user.Id == 0)
            {
                Random rnd = new Random();
                user.Id = rnd.Next();
            }

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.User.Add(user);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetUser", new { id = user.Id }, user);
        }


        private bool UserExists(int id)
        {
            return _context.User.Any(e => e.Id == id);
        }
    }
}