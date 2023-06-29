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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindcoursedata();
            }
        }
        public void bindcoursedata()
        {
           
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("SelectAllCourses", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
      
            SqlDataReader dr = cmd.ExecuteReader();
            DataGrid1.DataSource = dr;
            DataGrid1.DataBind();
            dr.Close();
            con.Close();
        }

        private void ResetForm()
        {
            course_id.Text = string.Empty;
            course_name.Text = string.Empty;
            course_description.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }


        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            bindcoursedata();


        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string course_id = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);

            string query = "DELETE FROM course WHERE course_id = @courseid";

            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@courseid", course_id);
       
            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                bindcoursedata();

            }
            else
            {
                lblMessage.Text = "Delete failed.";
            }
        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
           bindcoursedata();
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {
            try
            {

                TextBox courseIdTextBox = (TextBox)e.Item.Cells[0].Controls[0];
                TextBox courseNameTextBox = (TextBox)e.Item.Cells[1].Controls[0];
                TextBox courseDescriptionTextBox = (TextBox)e.Item.Cells[2].Controls[0];

                int courseId = Convert.ToInt32(courseIdTextBox.Text);
                string courseName = courseNameTextBox.Text;
                string courseDescription = courseDescriptionTextBox.Text;
                string connection = Application["dbconnect"].ToString();
                SqlConnection con = new SqlConnection(connection);
                SqlCommand cmd = new SqlCommand("UpdateCourse", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@course_name", courseName);
                cmd.Parameters.AddWithValue("@course_description", courseDescription);
                cmd.Parameters.AddWithValue("@course_id", courseId);

                int rowsAffected = cmd.ExecuteNonQuery();
                con.Close();
                if (rowsAffected > 0)
                {
                    DataGrid1.EditItemIndex = -1;
                    bindcoursedata();
                    lblMessage.Text = "Course record updated successfully.";
                }
                else
                {
                    lblMessage.Text = "Failed to update course record.";
                }

            }

            catch (System.FormatException)
            {
                lblMessage.Text = "Valid date of birth required.";
            }



        }

        protected void Register_Click(object sender, EventArgs e)
        {

            try
            {
                int courseId = Convert.ToInt32(course_id.Text);
                string courseName = course_name.Text;
                string courseDescription = course_description.Text;
                string connection = Application["dbconnect"].ToString();
                SqlConnection con = new SqlConnection(connection);
                SqlCommand cmd = new SqlCommand("InsertCourse", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@course_id", courseId);
                cmd.Parameters.AddWithValue("@course_name", courseName);
                cmd.Parameters.AddWithValue("@course_description", courseDescription);


                int rowsAffected = cmd.ExecuteNonQuery();
                con.Close();
                if (rowsAffected > 0)
                {
                    DataGrid1.EditItemIndex = -1;
                    bindcoursedata();
                    lblMessage.Text = "Course record updated successfully.";
                }
                else
                {
                    lblMessage.Text = "Failed to update Course  record.";
                }
                ResetForm();
            }
            catch (System.Data.SqlClient.SqlException)
            {

                lblMessage.Text = " Given Student Id is already exists, Change new Id to insert data";
            }
            catch (Exception ex)
            {

                lblMessage.Text = " An error occurred. Please contact the administrator. " + ex.Message;
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            ResetForm();
        }
    }
}