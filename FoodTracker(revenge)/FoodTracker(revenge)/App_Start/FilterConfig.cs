﻿using System.Web;
using System.Web.Mvc;

namespace FoodTracker_revenge_
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
