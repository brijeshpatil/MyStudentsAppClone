using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.StudentCareer
{
    public partial class StudentMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StudentProfile"] != null)
            {
                lblStudentNamne.Text = "Welcome " + ((DataTable)Session["StudentProfile"]).Rows[0]["fname"].ToString() + " " + ((DataTable)Session["StudentProfile"]).Rows[0]["lname"].ToString();
            }
            else
            {
                Response.Redirect("LogoutPage.aspx");
            }
        }
        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogoutPage.aspx");
        }
    }
}