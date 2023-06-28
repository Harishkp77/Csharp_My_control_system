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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                dateTextBox.Text = DateTime.Now.ToShortDateString();
                LoadAttendanceData();
            }
        }

        public void LoadAttendanceData()
        {

            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("SelectAllAttendance", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            attendanceDataGrid.DataSource = dr;
            attendanceDataGrid.DataBind();
            dr.Close();
            con.Close();
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try
            {
                int userId = int.Parse(userTextBox.Text);
            int subjectId = int.Parse(subjectTextBox.Text);
            DateTime date = DateTime.Parse(dateTextBox.Text);
            string isPresent = presentYesRadioButton.Checked ? "present" : "absent";
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("InsertAttendance", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@user_id", userId);
            cmd.Parameters.AddWithValue("@subject_id", subjectId);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@is_present", isPresent);
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                attendanceDataGrid.EditItemIndex = -1;
                LoadAttendanceData();
                lblMessage.Text = "attendance record updated successfully.";

            }
            else
            {
                lblMessage.Text = "Failed to update attendance  record.";
            }
            ClearInputFields();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                if (ex.Message.Contains("FK__Attendanc__user___3A4CA8FD"))
                {
                    lblMessage.Text = " Given User Id  doesn't exists , insert Valid Id to add attendance";
                }

                else if (ex.Message.Contains("FK__Attendanc__subje__3B40CD36"))
                {
                    lblMessage.Text = " Given Subject Id  doesn't exists , insert Valid Id to add attendance\".";
                }
                else
                {
                    lblMessage.Text = "An error occurred. Please contact the administrator.";
                }


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
        public void ClearInputFields()
        {
            userTextBox.Text = string.Empty;
            subjectTextBox.Text = string.Empty;
            dateTextBox.Text = string.Empty;
        }
      

        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            attendanceDataGrid.EditItemIndex = -1;
            LoadAttendanceData();
        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string attendance_id = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
                       
            SqlCommand command = new SqlCommand("DeleteAttendance", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@AttendanceID", attendance_id);

            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                LoadAttendanceData();

            }
            else
            {
                lblMessage.Text = "Delete failed.";

            }
        }

            protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
           attendanceDataGrid.EditItemIndex = e.Item.ItemIndex;
            LoadAttendanceData();
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {
            int attendanceId = Convert.ToInt32(((TextBox)e.Item.Cells[0].Controls[0]).Text);
            int userId = int.Parse(((TextBox)e.Item.Cells[1].Controls[0]).Text);
            int subjectId = int.Parse(((TextBox)e.Item.Cells[2].Controls[0]).Text);
            DateTime date = DateTime.Parse(((TextBox)e.Item.Cells[3].Controls[0]).Text);
           string isPresent = (((TextBox)e.Item.Cells[4].Controls[0]).Text);
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("UpdateAttendance", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@attendance_id", attendanceId);
            cmd.Parameters.AddWithValue("@user_id", userId);
            cmd.Parameters.AddWithValue("@subject_id", subjectId);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@is_present", isPresent);
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                attendanceDataGrid.EditItemIndex = -1;
                LoadAttendanceData();
                lblMessage.Text = "Subject record updated successfully.";
            }
            else
            {
                lblMessage.Text = "Failed to update subject record.";
            }



        }
    }
}