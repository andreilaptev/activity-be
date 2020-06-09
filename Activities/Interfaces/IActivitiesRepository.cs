using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Activities.Models;

namespace Activities.Interfaces
{
    public interface IActivitiesRepository
    {
        IList<Activity> GetActivities();
    }
}
