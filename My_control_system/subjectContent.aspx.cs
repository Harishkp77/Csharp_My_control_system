using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace My_control_system
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bindcoursedata();
            }
        }

        public void Bindcoursedata()
        {

            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("SelectallSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            DataGrid1.DataSource = dr;
            DataGrid1.DataBind();
            dr.Close();
            con.Close();
        }


        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            Bindcoursedata();
        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string subject_id = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);

            string query = "DELETE FROM Subject WHERE subject_id = @subjectid";

            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@subjectid", subject_id);

            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                Bindcoursedata();

            }
            else
            {
                lblMessage.Text = "Delete failed.";
            }
        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            Bindcoursedata();
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {
            TextBox subjectIdTextBox = (TextBox)e.Item.Cells[0].Controls[0];
            TextBox courseIdTextBox = (TextBox)e.Item.Cells[1].Controls[0];
            TextBox subjectNameTextBox = (TextBox)e.Item.Cells[2].Controls[0];
            TextBox subjectDescriptionTextBox = (TextBox)e.Item.Cells[3].Controls[0];
            int subjectId = Convert.ToInt32(subjectIdTextBox.Text);
            int courseId = Convert.ToInt32(courseIdTextBox.Text);
            string subjectName = subjectNameTextBox.Text;
            string subjectDescription = subjectDescriptionTextBox.Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("UpdateSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@subject_id", subjectId);
            cmd.Parameters.AddWithValue("@course_id ", courseId);
            cmd.Parameters.AddWithValue("@subject_name", subjectName);
            cmd.Parameters.AddWithValue("@subject_description", subjectDescription);

            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                DataGrid1.EditItemIndex = -1;
                Bindcoursedata();
                lblMessage.Text = "Subject record updated successfully.";
            }
            else
            {
                lblMessage.Text = "Failed to update subject record.";
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try 
            { 

            int subjectId = Convert.ToInt32(subject_id.Text);
            int courseId = Convert.ToInt32(course_id.Text);
            string subjectName = subj_name.Text;
            string subjectDescription = subj_description.Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("InsertSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@subject_id", subjectId);
            cmd.Parameters.AddWithValue("@course_id ", courseId);
            cmd.Parameters.AddWithValue("@subject_name", subjectName);
            cmd.Parameters.AddWithValue("@subject_description", subjectDescription);


            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                DataGrid1.EditItemIndex = -1;
                Bindcoursedata();
                lblMessage.Text = "Course record updated successfully.";
            }
            else
            {
                lblMessage.Text = "Failed to update Course  record.";
            }
            Clear();
        }
             catch(System.Data.SqlClient.SqlException)
            {

                lblMessage.Text = " Given Student Id is already exists, Change new Id to insert data";
            }
            catch (Exception ex)
            {

                lblMessage.Text = " An error occurred. Please contact the administrator. " + ex.Message;
            }

        }
        public void Clear()
        {
             subject_id.Text= string.Empty;
            course_id.Text = string.Empty;
            subj_name.Text = string.Empty;
            subj_description.Text = string.Empty;
            lblMessage.Text = "";
        }

    protected void Reset_Click(object sender, EventArgs e)
        {
                Clear();
        }
    }
}