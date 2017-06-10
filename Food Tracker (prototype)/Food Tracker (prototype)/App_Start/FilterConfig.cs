using System.Web;
using System.Web.Mvc;

namespace Food_Tracker__prototype_
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
