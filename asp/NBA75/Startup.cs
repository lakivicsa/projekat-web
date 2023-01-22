using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NBA75.Startup))]
namespace NBA75
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
