using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Activities.Interfaces;
using Microsoft.EntityFrameworkCore;
using Activities.Models;

namespace Activities.Data
{
    public class ActivitiesContext : DbContext, IActivitiesRepository
    {
        public ActivitiesContext (DbContextOptions<ActivitiesContext> options)
            : base(options)
        {
        }

        public  ActivitiesContext (){}

        public DbSet<Activities.Models.Activity> Activity { get; set; }

        public DbSet<Activities.Models.User> User { get; set; }

        public virtual IList<Activity> GetActivities()
        {
            return this.Activity.ToList();
        }
    }
}
