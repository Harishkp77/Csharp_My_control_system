using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;



namespace My_control_system
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bindstudentdata();
            }
        }


        public void Bindstudentdata()
        {
             string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("view_stu_table", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataGrid1.DataSource = dr;
            DataGrid1.DataBind();
            dr.Close();
            con.Close();
        }

        public void ClearFields()
        {
            studentid.Text = string.Empty;
            firstname.Text = string.Empty;
            lastname.Text = string.Empty;
            emailid.Text = string.Empty;
            phone.Text = string.Empty;
            address.Text = string.Empty;
            dateofbirth.Text = string.Empty;
            ddlGender.SelectedIndex = 0;
        }

        public int Updatestudentdata(int student_id, string stu_first_name, string stu_last_name, string stu_email_id, string stu_phone_number, string stu_address, DateTime stu_dateofbirth, string stu_gender)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("update_stu_reg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@student_id", student_id);
            cmd.Parameters.AddWithValue("@stu_first_name", stu_first_name);
            cmd.Parameters.AddWithValue("@stu_last_name", stu_last_name);
            cmd.Parameters.AddWithValue("@stu_email_id", stu_email_id);
            cmd.Parameters.AddWithValue("@stu_phone_number", stu_phone_number);
            cmd.Parameters.AddWithValue("@stu_address", stu_address);
            cmd.Parameters.AddWithValue("@stu_dateofbirth", stu_dateofbirth);
            cmd.Parameters.AddWithValue("@stu_gender", stu_gender);
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            return rowsAffected;
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try
            {
                int student_id = Convert.ToInt32(studentid.Text);
                string stu_first_name = firstname.Text;
                string stu_last_name = lastname.Text;
                string stu_email_id = emailid.Text;
                string stu_phone_number = phone.Text;
                string stu_address = address.Text;
                DateTime stu_dateofbirth = Convert.ToDateTime(dateofbirth.Text);
                string stu_gender = ddlGender.SelectedValue;
                                              
                int rowsAffected = Insertstudentdata(student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender);
                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Student registration successful.";
                    Bindstudentdata();
                }
                else
                {
                    lblMessage.Text = "Failed to register student.";
                }
                ClearFields();
        }

            catch(System.Data.SqlClient.SqlException )
            {

                lblMessage.Text = " Given Student Id is already exists, Change new Id to insert data";
            }
            catch (Exception ex)
            {

                lblMessage.Text = " An error occurred. Please contact the administrator. " + ex.Message;
            }
             
        }


        public int Insertstudentdata(int student_id, string stu_first_name, string stu_last_name, string stu_email_id, string stu_phone_number, string stu_address, DateTime stu_dateofbirth, string stu_gender)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("insert_stu_reg ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@student_id", student_id);
            cmd.Parameters.AddWithValue("@stu_first_name", stu_first_name);
            cmd.Parameters.AddWithValue("@stu_last_name", stu_last_name);
            cmd.Parameters.AddWithValue("@stu_email_id", stu_email_id);
            cmd.Parameters.AddWithValue("@stu_phone_number", stu_phone_number);
            cmd.Parameters.AddWithValue("@stu_address", stu_address);
            cmd.Parameters.AddWithValue("@stu_dateofbirth", stu_dateofbirth);
            cmd.Parameters.AddWithValue("@stu_gender", stu_gender);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            return x;
     

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            ClearFields();
        }


        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            Bindstudentdata();
        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string studentId = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);

            string query = "DELETE FROM Student WHERE student_id = @StudentId";

            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@StudentId", studentId);

            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                Bindstudentdata();
            }
            else
            {
                lblMessage.Text = "Delete failed.";
            }
        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            Bindstudentdata();
        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {
         
            TextBox studentIdTextBox = (TextBox)e.Item.Cells[0].Controls[0];
            TextBox firstNameTextBox = (TextBox)e.Item.Cells[1].Controls[0];
            TextBox lastNameTextBox = (TextBox)e.Item.Cells[2].Controls[0];
            TextBox emailTextBox = (TextBox)e.Item.Cells[3].Controls[0];
            TextBox phoneTextBox = (TextBox)e.Item.Cells[4].Controls[0];
            TextBox addressTextBox = (TextBox)e.Item.Cells[5].Controls[0];
            TextBox dobTextBox = (TextBox)e.Item.Cells[6].Controls[0];
            TextBox ddlGender = (TextBox)e.Item.Cells[7].Controls[0];

            int studentId = Convert.ToInt32(studentIdTextBox.Text);
                string firstName = firstNameTextBox.Text;
                string lastName = lastNameTextBox.Text;
                string email = emailTextBox.Text;
                string phone = phoneTextBox.Text;
                string address = addressTextBox.Text;
                DateTime dob = Convert.ToDateTime(dobTextBox.Text);
                string gender = ddlGender.Text;

            int rowsAffected = Updatestudentdata(studentId, firstName, lastName, email, phone, address, dob, gender);

                if (rowsAffected > 0)
                {
                DataGrid1.EditItemIndex = -1;
                Bindstudentdata();
                    lblMessage.Text = "Student record updated successfully.";
                }
                else
                {
                    lblMessage.Text = "Failed to update student record.";
                }
            
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void dateofbirth_TextChanged(object sender, EventArgs e)
        {

        }
    }
}