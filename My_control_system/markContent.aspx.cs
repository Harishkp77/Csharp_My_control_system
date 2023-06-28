using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_control_system
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadmarkData();
            }
        }
        public void LoadmarkData()
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("SelectAllMarks", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataGrid1.DataSource = dr;
            DataGrid1.DataBind();
            dr.Close();
            con.Close();
        }

        public void ClearInputFields()
        {
   
            user_idTextBox.Text = string.Empty;
            subject_idTextBox.Text = string.Empty;
            exam_idTextBox.Text= string.Empty;
            marks_obtainedTextBox.Text = string.Empty;
        }

        protected void Register_Click(object sender, EventArgs e)
        {
         
            int userid = int.Parse(user_idTextBox.Text);
            int subjectId = int.Parse(subject_idTextBox.Text);
            int examid = int.Parse(exam_idTextBox.Text);
            int marks = int.Parse(marks_obtainedTextBox.Text);
           
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("InsertMark", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
         
            cmd.Parameters.AddWithValue("@user_id", userid);
            cmd.Parameters.AddWithValue("@subject_id", subjectId);
            cmd.Parameters.AddWithValue("@exam_id", examid);
            cmd.Parameters.AddWithValue("@marks_obtained ", marks);

            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                DataGrid1.EditItemIndex = -1;
                LoadmarkData();
                lblMessage.Text = "mark record updated successfully.";

            }
            else
            {
                lblMessage.Text = "Failed to update mark" +
                    "+ record.";
            }
            ClearInputFields();
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            ClearInputFields();
        }

        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            LoadmarkData();
        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string mark_id = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand command = new SqlCommand("DeleteMark", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@mark_id", mark_id);
            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                LoadmarkData();

            }
            else
            {
                lblMessage.Text = "Delete failed.";

            }
        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            LoadmarkData();
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {
            int markid = Convert.ToInt32(((TextBox)e.Item.Cells[0].Controls[0]).Text);
            int userid= int.Parse(((TextBox)e.Item.Cells[1].Controls[0]).Text);
            int subjectid= Convert.ToInt32(((TextBox)e.Item.Cells[2].Controls[0]).Text);
            int examid = Convert.ToInt32(((TextBox)e.Item.Cells[3].Controls[0]).Text);
            int marks = Convert.ToInt32(((TextBox)e.Item.Cells[3].Controls[0]).Text);
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("UpdateMark", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@mark_id", markid);
            cmd.Parameters.AddWithValue("@user_id", userid);
            cmd.Parameters.AddWithValue("@subject_id", subjectid);
            cmd.Parameters.AddWithValue("@exam_id", examid);
            cmd.Parameters.AddWithValue("@marks_obtained", marks);
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                DataGrid1.EditItemIndex = -1;
                LoadmarkData();
                lblMessage.Text = "mark record updated successfully.";
            }
            else
            {
                lblMessage.Text = "Failed to update mark record.";
            }
        }
    }
}