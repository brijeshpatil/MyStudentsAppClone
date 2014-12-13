using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.StudentCareer
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        PService PS = new PService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Err"] != null)
            {
                lblError.Text = Request.QueryString["Err"].ToString();

            }
            if (!IsPostBack)
            {
                FillExamTypes();
            }
        }

        private void FillExamTypes()
        {
            drpExamType.DataSource = PS.GetAllExamType();
            drpExamType.DataTextField = "ExamType";
            drpExamType.DataValueField = "ExamTypeID";
            drpExamType.DataBind();
            ListItem li = new ListItem();
            li.Text = "Select Your Assessment Type";
            li.Value = "0";
            drpExamType.Items.Insert(0, li);
        }
        protected void drpExamType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpExamType.SelectedItem.Value != "0")
            {
                Session["RQuestions"] = PS.GetRandomQuestions(Convert.ToInt16(drpExamType.SelectedItem.Value));
                if (((DataTable)Session["RQuestions"]).Rows.Count > 0)
                {
                    Response.Redirect("ExamInit.aspx");
                }
                else
                {
                    lblError.Text = "Sorry, You are Not Allowed by ADMIN To Select This Exam..";
                }
                //Session.Timeout = 600;
                
            }
            else
            {
                drpExamType.BorderColor = System.Drawing.Color.Red;
                drpExamType.SelectedIndex = 0;
            }
        }
    }
}