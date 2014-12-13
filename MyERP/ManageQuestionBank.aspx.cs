using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApp.MyERP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        PService PS = new PService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillExamTypes();
            }
        }

        private void FillExamTypes()
        {
            drpQuestionType.DataSource = PS.GetAllExamType();
            drpQuestionType.DataTextField = "ExamType";
            drpQuestionType.DataValueField = "ExamTypeId";
            drpQuestionType.DataBind();
            ListItem li = new ListItem();
            li.Text = "Select Exam Type";
            li.Value = "0";
            drpQuestionType.Items.Insert(0, li);
        }
        protected void drpQuestionType_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillQuestionBank(Convert.ToInt16(drpQuestionType.SelectedItem.Value));
        }

        private void FillQuestionBank(int ExamTypeID)
        {
            GridView1.DataSource = PS.GetAllExamQuestionByExamType(ExamTypeID);
            GridView1.DataBind();
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            pnlExtractQuestions.Visible = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {/*
        string filename = FileUpload1.PostedFile.FileName;
        Response.Write(filename);
        string path = Server.MapPath("~/files/") + filename;
        FileUpload1.SaveAs(path);

        string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0 Xml;HDR=YES;IMEX=1\";";

        
        string strSQL = "SELECT * FROM [Sheet1$]";
        OleDbConnection excelConnection = new OleDbConnection(connectionString);
        excelConnection.Open(); // this will open an Excel file
        OleDbCommand dbCommand = new OleDbCommand(strSQL, excelConnection);
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(dbCommand);

        // create data table
        DataTable dTable = new DataTable();

        dataAdapter.Fill(dTable);
       
        for (int i = 0; i < dTable.Rows.Count; i++)
        {
            Response.Write(dTable.Rows[i]["Question"] + "<br/>");
        }
 
       dTable.Dispose();
       dataAdapter.Dispose();
       dbCommand.Dispose();
       excelConnection.Close();
       excelConnection.Dispose();*/

        }
    }
}