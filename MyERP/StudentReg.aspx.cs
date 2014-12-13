using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.MyERP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        PService PS = new PService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FIllStudentList();
            }
            //#3b7687
        }

        private void FIllStudentList()
        {
            GridviewStudentList.DataSource = PS.GetAllStudents();
            GridviewStudentList.DataBind();
        }
        protected void GridviewStudentList_DataBound(object sender, EventArgs e)
        {
            for (int i = 0; i < GridviewStudentList.Rows.Count; i++)
            {
                LinkButton lnk = (LinkButton)GridviewStudentList.Rows[i].FindControl("LinkButton1");
                CheckBox chk = (CheckBox)GridviewStudentList.Rows[i].FindControl("CheckBox1");
                if (chk.Checked)
                {
                    lnk.Text = "Verified";
                    lnk.CommandName = "Block";
                    GridviewStudentList.Rows[i].BackColor = System.Drawing.Color.White;
                }
                else
                {
                    lnk.Text = "UnVerified";
                    lnk.CommandName = "UnBlock";
                    GridviewStudentList.Rows[i].BackColor = System.Drawing.Color.FromName("#58a1b6");
                }
            }
        }
        protected void GridviewStudentList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Block")
            {
                PS.ManageStudent(Convert.ToInt16(e.CommandArgument), "False");
                FIllStudentList();
            }
            if (e.CommandName == "UnBlock")
            {
                PS.ManageStudent(Convert.ToInt16(e.CommandArgument), "True");
                FIllStudentList();
            }
        }
    }
}