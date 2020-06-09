using System.Collections.Generic;
using System.Linq;
using Activities.Controllers;
using Activities.Data;
using Activities.Interfaces;
using Activities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace ActivitiesUnitTestProject
{
    [TestClass]
    public class ActivitiesTest
    {
        [TestMethod]
        public void TestGetAllActivities()
        {
            var mockDependency = new Mock<ActivitiesContext>();

            List<Activity> activities = new List<Activity>();

            activities.Add(new Activity
                {
                    Id = 111,
                    Name = "test"
                }
            );
            activities.Add(new Activity
                {
                    Id = 222,
                    Name = "test2"
                }
            );

            mockDependency.Setup(x => x.GetActivities())
                .Returns(activities);

            var actCont = new ActivitiesController(mockDependency.Object);

            var  res = actCont.GetActivities();

            Assert.AreEqual(res.Count(), 2);
        }
    }
}
