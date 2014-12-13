using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.StudentCareer
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Thread.Sleep(500);
            Session.Abandon();
            Response.Redirect("../StudentLogin.aspx");
        }
    }
}