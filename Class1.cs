using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StudentWebApp
{
    public class Class1
    {
    }

    public class PService : DataService
    {
        public int StudentID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public bool IsActive { get; set; }

        public int ExamTypeID { get; set; }
        public string ExamType { get; set; }

        public decimal Marks { get; set; }
        public int TakenExamID { get; set; }
        public DateTime ExamDate { get; set; }
        public string ExamStatus { get; set; }


        public int QuestionID { get; set; }
        public string Question { get; set; }
        public string OptionA { get; set; }
        public string OptionB { get; set; }
        public string OptionC { get; set; }
        public string OptionD { get; set; }
        public string CorrectAnswer { get; set; }



    }
    public class DataService
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentDBConn"].ConnectionString);
        SqlDataAdapter da;
        DataTable dt;
        SqlCommand cmd;

        public void RegStudent(PService P)
        {
            cmd = new SqlCommand("RegStudent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Fname", P.FirstName);
            cmd.Parameters.AddWithValue("@Lname", P.LastName);
            cmd.Parameters.AddWithValue("@UName", P.UserName);
            cmd.Parameters.AddWithValue("@Pass", P.Password);
            cmd.Parameters.AddWithValue("@RegDate", DateTime.Now);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable VerifyStudentLogin(PService P)
        {
            da = new SqlDataAdapter("VerifyStudentLogin", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@UName", P.UserName);
            da.SelectCommand.Parameters.AddWithValue("@Pass", P.Password);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable GetAllStudents()
        {
            da = new SqlDataAdapter("GetAllStudents", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void ManageStudent(int StudentID, string Action)
        {
            cmd = new SqlCommand("ManageStudent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SID", StudentID);
            cmd.Parameters.AddWithValue("@Action", Convert.ToBoolean(Action));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void InsertNewExamType(string ExamType)
        {
            cmd = new SqlCommand("InsertNewExamType", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Type", ExamType);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void UpdateExamType(int ExamTypeID, string ExamType)
        {
            cmd = new SqlCommand("UpdateExamType", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TID", ExamTypeID);
            cmd.Parameters.AddWithValue("@Type", ExamType);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable GetAllExamType()
        {
            da = new SqlDataAdapter("GetAllExamType", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable GetAllExamQuestions()
        {
            da = new SqlDataAdapter("GetAllExamQuestions", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable GetAllExamQuestionByExamType(int ExamTypeID)
        {
            da = new SqlDataAdapter("GetAllExamQuestionByExamType", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@ETypeID", ExamTypeID);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable GetRandomQuestions(int ExamTypeID)
        {
            da = new SqlDataAdapter("GetRandomQuestions", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@TID", ExamTypeID);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void SubmitExam(PService P)
        {
            cmd = new SqlCommand("SubmitExam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ETID", P.ExamTypeID);
            cmd.Parameters.AddWithValue("@SID", P.StudentID);
            cmd.Parameters.AddWithValue("@Marks", P.Marks);
            cmd.Parameters.AddWithValue("@EStatus", P.ExamStatus);
            cmd.Parameters.AddWithValue("@EDate", P.ExamDate);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable GivenExams()
        {
            da = new SqlDataAdapter("GivenExams", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}