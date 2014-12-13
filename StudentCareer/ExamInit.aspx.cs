using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.StudentCareer
{
    public partial class ExamInit : System.Web.UI.Page
    {
        PService PS = new PService();
        static int Marks = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!ScriptManager1.IsInAsyncPostBack)
            {
                Session["Timeout"] = DateTime.Now.AddMinutes(120).ToString();
            }

            if (Session["RQuestions"] != null)
            {
                if (!IsPostBack)
                {
                    FIllQuestions();
                }
            }
            else
            {
                Response.Redirect("SelectExam.aspx?Err=Sorry, There should be some problem....Please Try Again....");
            }
        }

        private void FIllQuestions()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["RQuestions"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                ((Label)GridView1.Rows[i].FindControl("Label2")).Text = (i + 1).ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Marks = 0;
            DataTable dt = new DataTable();
            dt = (DataTable)Session["RQuestions"];
            //Label4.Text = dt.Rows[0]["correctans"].ToString();
            //DataTable dttt = new DataTable();
            //dttt = (DataTable)GridView1.DataSource;
            //Label4.Text += "   => " + dt.Rows[0]["correctans"].ToString();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                RadioButton rdoA = (RadioButton)GridView1.Rows[i].FindControl("RadioButton1");
                RadioButton rdoB = (RadioButton)GridView1.Rows[i].FindControl("RadioButton2");
                RadioButton rdoC = (RadioButton)GridView1.Rows[i].FindControl("RadioButton3");
                RadioButton rdoD = (RadioButton)GridView1.Rows[i].FindControl("RadioButton4");
                if (rdoA.Checked)
                {
                    if (dt.Rows[i]["correctans"].ToString() == "opA")
                    {
                        Marks++;
                    }
                }
                else if (rdoB.Checked)
                {
                    if (dt.Rows[i]["correctans"].ToString() == "opB")
                    {
                        Marks++;
                    }
                }
                else if (rdoC.Checked)
                {
                    if (dt.Rows[i]["correctans"].ToString() == "opC")
                    {
                        Marks++;
                    }
                }
                else if (rdoD.Checked)
                {
                    if (dt.Rows[i]["correctans"].ToString() == "opD")
                    {
                        Marks++;
                    }
                }

            }
            //Label4.Text = Marks.ToString();
            Panel1.Visible = false;
            PanelComplete.Visible = true;
            lblTime.Text = "";
            lblTime.Visible = false;

            lblMarks.Text = "You have sceored " + Marks + " Marks..";
            lblSuggetions.Text = "";
            if (Marks > ((GridView1.Rows.Count + 1) / 2))
            {
                lblSuggetions.ForeColor = System.Drawing.Color.Green;
                lblSuggetions.Text = "Your Assessment is Good... Keep It Up...";
            }
            else if (Marks < ((GridView1.Rows.Count + 1) / 5))
            {
                lblSuggetions.ForeColor = System.Drawing.Color.Red;
                lblSuggetions.Text = "You have to work very hard... Please again give this exam after preparation....";
            }
            else
            {
                lblSuggetions.ForeColor = System.Drawing.Color.Blue;
                lblSuggetions.Text = "Your Assessment is Average... Needs more preparation...";
            }

            PS.ExamTypeID = Convert.ToInt16(dt.Rows[0]["ETypeID"].ToString());
            PS.StudentID = Convert.ToInt16(((DataTable)Session["StudentProfile"]).Rows[0]["sid"].ToString());
            PS.Marks = Marks;
            PS.ExamStatus = lblSuggetions.Text;
            PS.ExamDate = System.DateTime.Now;
            PS.SubmitExam(PS);

            Timer1.Interval = 100000;
            Session.Remove("RQuestions");
            Marks = 0;
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //lblTime.Text = DateTime.Now.ToString();
            if (0 > DateTime.Compare(DateTime.Now,
            DateTime.Parse(Session["timeout"].ToString())))
            {
                lblTime.Text = "Number of Minutes Left: " +
                ((Int32)DateTime.Parse(Session["timeout"].
                ToString()).Subtract(DateTime.Now).TotalMinutes).ToString();
            }
        }
    }
}