using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.MyERP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        PService PS = new PService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FIllExamTypes();
            }
        }

        private void FIllExamTypes()
        {
            GridviewExamTypes.DataSource = PS.GetAllExamType();
            GridviewExamTypes.DataBind();
        }
        protected void GridviewExamTypes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridviewExamTypes.EditIndex = e.NewEditIndex;
            FIllExamTypes();
        }
        protected void GridviewExamTypes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridviewExamTypes.EditIndex = -1;
            FIllExamTypes();
        }
        protected void GridviewExamTypes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PS.ExamType = ((TextBox)GridviewExamTypes.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            PS.ExamTypeID = Convert.ToInt16(GridviewExamTypes.DataKeys[e.RowIndex].Value);
            PS.UpdateExamType(PS.ExamTypeID, PS.ExamType);
            GridviewExamTypes.EditIndex = -1;
            FIllExamTypes();
        }
        protected void GridviewExamTypes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                PS.ExamType = ((TextBox)GridviewExamTypes.HeaderRow.FindControl("TextBox2")).Text;
                PS.InsertNewExamType(PS.ExamType);
                FIllExamTypes();
            }
        }
    }
}