using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.MyERP
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        PService PS = new PService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FIllAppliedExams();
            }
        }

        private void FIllAppliedExams()
        {
            GridView1.DataSource = PS.GivenExams();
            GridView1.DataBind();
        }
    }
}