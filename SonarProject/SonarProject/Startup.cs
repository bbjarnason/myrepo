using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SonarProject.Startup))]
namespace SonarProject
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }

    

}
