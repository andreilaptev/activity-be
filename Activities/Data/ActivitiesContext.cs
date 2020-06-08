using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ActivitySignUp.Models;
using Activities.Models;

namespace Activities.Data
{
    public class ActivitiesContext : DbContext
    {
        public ActivitiesContext (DbContextOptions<ActivitiesContext> options)
            : base(options)
        {
        }

        public DbSet<ActivitySignUp.Models.Activity> Activity { get; set; }

        public DbSet<Activities.Models.User> User { get; set; }

    }
}
