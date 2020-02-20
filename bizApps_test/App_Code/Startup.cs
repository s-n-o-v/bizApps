using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(bizApps_test.Startup))]
namespace bizApps_test
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
