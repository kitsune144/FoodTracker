using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FoodTracker_revenge_.Startup))]
namespace FoodTracker_revenge_
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
