using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        PService PS = new PService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            PS.FirstName = txtfname.Text;
            PS.LastName = txtlname.Text;
            PS.UserName = txtUName.Text;
            PS.Password = txtCPass.Text;
            PS.RegStudent(PS);
            lblSuccess.Text = "Registered Successfully....<br/>Please Contact your Admin to Approve request.!!";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            PS.UserName = txtLogUserName.Text;
            PS.Password = txtLogPass.Text;
            DataTable dt = new DataTable();
            dt = PS.VerifyStudentLogin(PS);
            if (dt.Rows.Count > 0)
            {
                Session["StudentProfile"] = dt;
                Response.Redirect("/StudentCareer/StudentHome.aspx");
            }
            else
            {
                lblErorr.Text = "Please Contact Your Admin for this problem";
            }
        }
    }
}