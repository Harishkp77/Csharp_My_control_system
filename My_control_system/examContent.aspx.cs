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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 LoadexamData();
            }
        }
        public void LoadexamData()
        {

            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("SelectAllExams", con);
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
   
            subject_idTextBox.Text = string.Empty;
            exam_dateTextBox.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }

        protected void Register_Click(object sender, EventArgs e)
        {

            try
            {


                int subjectId = int.Parse(subject_idTextBox.Text);
                DateTime date = DateTime.Parse(exam_dateTextBox.Text);

                string connection = Application["dbconnect"].ToString();
                SqlConnection con = new SqlConnection(connection);
                SqlCommand cmd = new SqlCommand("InsertExam", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.AddWithValue("@subject_id", subjectId);
                cmd.Parameters.AddWithValue("@exam_date", date);

                int rowsAffected = cmd.ExecuteNonQuery();
                con.Close();
                if (rowsAffected > 0)
                {
                    DataGrid1.EditItemIndex = -1;
                    LoadexamData();
                    lblMessage.Text = "exam record updated successfully.";

                }
                else
                {
                    lblMessage.Text = "Failed to update exam record.";
                }
                ClearInputFields();
            }
            catch (System.Data.SqlClient.SqlException)
            {
                lblMessage.Text = "Invalid Subject Id. Provide Valid Id to add Exam";
            }
            catch (Exception ex)
            {

                lblMessage.Text = " An error occurred. Please contact the administrator. " + ex.Message;
            }


        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            ClearInputFields();
        }

        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            LoadexamData();
        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string exam_id = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);

            SqlCommand command = new SqlCommand("DeleteExam", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@exam_id", exam_id);

            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                LoadexamData();

            }
            else
            {
                lblMessage.Text = "Delete failed.";

            }
        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            LoadexamData();
        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {

            try
            {
                int exam_id = Convert.ToInt32(((TextBox)e.Item.Cells[0].Controls[0]).Text);
                int subjectId = int.Parse(((TextBox)e.Item.Cells[1].Controls[0]).Text);
                DateTime date = DateTime.Parse(((TextBox)e.Item.Cells[2].Controls[0]).Text);
                string connection = Application["dbconnect"].ToString();
                SqlConnection con = new SqlConnection(connection);
                SqlCommand cmd = new SqlCommand("UpdateExam", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@exam_id", exam_id);
                cmd.Parameters.AddWithValue("@subject_id", subjectId);
                cmd.Parameters.AddWithValue("@exam_date", date);
                int rowsAffected = cmd.ExecuteNonQuery();
                con.Close();
                if (rowsAffected > 0)
                {
                    DataGrid1.EditItemIndex = -1;
                    LoadexamData();
                    lblMessage.Text = "exam record updated successfully.";
                }
                else
                {
                    lblMessage.Text = "Failed to update exam record.";
                }
            }
            catch (System.FormatException)
            {
                lblMessage.Text = "Valid date of birth required.";
            }

        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}