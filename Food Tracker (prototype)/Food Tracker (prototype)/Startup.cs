using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Food_Tracker__prototype_.Startup))]
namespace Food_Tracker__prototype_
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
