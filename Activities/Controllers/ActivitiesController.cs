using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Activities.Data;
using Activities.Interfaces;
using Activities.Models;

namespace Activities.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ActivitiesController : ControllerBase
    {
        private readonly IActivitiesRepository _context;

        public ActivitiesController(ActivitiesContext context)
        {
            _context = context;
        }


        // GET: api/Activities
        [HttpGet]
        public IEnumerable<Activity> GetActivities()
        {
            return _context.GetActivities();
        }

    }
}