using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HvacPlaybook.Startup))]
namespace HvacPlaybook
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
