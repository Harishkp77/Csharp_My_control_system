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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                bindstudentdata();
            }
        }

        public void bindstudentdata()
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("view_staff_table", con);
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
            staffid.Text = string.Empty;
            firstname.Text = string.Empty;
            lastname.Text = string.Empty;
            emailid.Text = string.Empty;
            phone.Text = string.Empty;
            address.Text = string.Empty;
            dateofbirth.Text = string.Empty;
            ddlGender.SelectedIndex = 0;
            dateofjoining.Text = string.Empty;
        }

        public int updatestaffdata(int staff_id, string staff_first_name, string staff_last_name, string staff_email_id, string staff_phone_number, string staff_address, DateTime staff_dateofbirth, string staff_gender, DateTime staff_dateofjoin)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("update_staff_reg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@staff_id", staff_id);
            cmd.Parameters.AddWithValue("@staff_first_name", staff_first_name);
            cmd.Parameters.AddWithValue("@staff_last_name", staff_last_name);
            cmd.Parameters.AddWithValue("@staff_email_id", staff_email_id);
            cmd.Parameters.AddWithValue("@staff_phone_number", staff_phone_number);
            cmd.Parameters.AddWithValue("@staff_address", staff_address);
            cmd.Parameters.AddWithValue("@staff_dateofbirth", staff_dateofbirth);
            cmd.Parameters.AddWithValue("@staff_gender", staff_gender);
            cmd.Parameters.AddWithValue("@staff_dateofjoin", staff_dateofjoin);
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            return rowsAffected;
        }
        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            bindstudentdata();
        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string staffId = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);

            string query = "DELETE FROM Staff WHERE staff_id = @StaffId";

            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@StaffId", staffId);

            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                bindstudentdata();
            }
            else
            {
                lblMessage.Text = "Delete failed.";
            }
        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            bindstudentdata();
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
            DropDownList genderDropDown = (DropDownList)e.Item.FindControl("ddlGender");
            TextBox dojTextBox = (TextBox)e.Item.Cells[8].Controls[0];


            int staffId = Convert.ToInt32(studentIdTextBox.Text);
            string firstName = firstNameTextBox.Text;
            string lastName = lastNameTextBox.Text;
            string email = emailTextBox.Text;
            string phone = phoneTextBox.Text;
            string address = addressTextBox.Text;
            DateTime dob = Convert.ToDateTime(dobTextBox.Text);
            string gender = ddlGender.SelectedValue;
            DateTime doj= Convert.ToDateTime(dobTextBox.Text);


            int rowsAffected = updatestaffdata(staffId, firstName, lastName, email, phone, address, dob, gender,doj);

            if (rowsAffected > 0)
            {
                DataGrid1.EditItemIndex = -1;
                bindstudentdata();
                lblMessage.Text = "Staff record updated successfully.";
            }
            else
            {
                lblMessage.Text = "Failed to update staff record.";
            }
        }


        protected void Register_Click(object sender, EventArgs e)
        {
            try
            {


                int staff_id = Convert.ToInt32(staffid.Text);
                string staff_first_name = firstname.Text;
                string staff_last_name = lastname.Text;
                string staff_email_id = emailid.Text;
                string staff_phone_number = phone.Text;
                string staff_address = address.Text;
                DateTime staff_dateofbirth = Convert.ToDateTime(dateofbirth.Text);
                string staff_gender = ddlGender.SelectedValue;
                DateTime staff_dateofjoining = Convert.ToDateTime(dateofjoining.Text);

                int rowsAffected = insertstaffdata(staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoining);
                if (rowsAffected > 0)
                {

                    lblMessage.Text = "Staff registration successful.";
                    bindstudentdata();
                }
                else
                {

                    lblMessage.Text = "Failed to register staff.";
                }
            }
            catch (System.Data.SqlClient.SqlException)
            {

                lblMessage.Text = " Given Staff Id is already exists, Change new id to insert data";
            }
            catch (Exception ex)
            {

                lblMessage.Text = " An error occurred. Please contact the administrator. " + ex.Message;
            }


        }

        public int insertstaffdata(int staff_id, string staff_first_name, string staff_last_name, string staff_email_id, string staff_phone_number, string staff_address, DateTime staff_dateofbirth, string staff_gender, DateTime staff_dateofjoin)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("insert_staff_reg ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@staff_id", staff_id);
            cmd.Parameters.AddWithValue("@staff_first_name", staff_first_name);
            cmd.Parameters.AddWithValue("@staff_last_name", staff_last_name);
            cmd.Parameters.AddWithValue("@staff_email_id", staff_email_id);
            cmd.Parameters.AddWithValue("@staff_phone_number", staff_phone_number);
            cmd.Parameters.AddWithValue("@staff_address", staff_address);
            cmd.Parameters.AddWithValue("@staff_dateofbirth", staff_dateofbirth);
            cmd.Parameters.AddWithValue("@staff_gender", staff_gender);
            cmd.Parameters.AddWithValue("@staff_dateofjoin", staff_dateofjoin);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            return x;
        }

            protected void Reset_Click(object sender, EventArgs e)
        {
            ClearFields();
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}