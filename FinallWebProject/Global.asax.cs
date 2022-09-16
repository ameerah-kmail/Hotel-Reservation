using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication2
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["online"] = 0;
            Application["hits"] = 0;
            Application["visited"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["online"] = Int32.Parse(Application["online"].ToString()) + 1;
            Application["visited"] = Int32.Parse(Application["visited"].ToString()) + 1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            Application.Lock();
            Application["hits"] = Int32.Parse(Application["hits"].ToString()) + 1;
            Application.UnLock();
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["online"] = Int32.Parse(Application["online"].ToString()) - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}