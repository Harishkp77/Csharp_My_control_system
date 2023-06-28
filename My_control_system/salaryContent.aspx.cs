using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.InteropServices.ComTypes;

namespace My_control_system
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                yearTextBox.Text = (DateTime.Now.Year).ToString();
                LoadsalaryData();
            }
        }
        public void LoadsalaryData()
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("GetAllSalaries", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataGrid1.DataSource = dr;
            DataGrid1.DataBind();
            dr.Close();
            con.Close();
        }

        private void ClearInputFields()
        {
           
            staff_idTextBox.Text = string.Empty;
            yearTextBox.Text = string.Empty;
            amountTextBox.Text = string.Empty;
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try

            {
                int staffId = int.Parse(staff_idTextBox.Text);
                string month = monthDropDown.SelectedValue;
                int year = int.Parse(yearTextBox.Text);
                decimal amount = Convert.ToDecimal(amountTextBox.Text);

                string connection = Application["dbconnect"].ToString();
                SqlConnection con = new SqlConnection(connection);
                SqlCommand cmd = new SqlCommand("InsertSalary", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.AddWithValue("@staff_id", staffId);
                cmd.Parameters.AddWithValue("@month", month);
                cmd.Parameters.AddWithValue("@year", year);
                cmd.Parameters.AddWithValue("@amount ", amount);

                int rowsAffected = cmd.ExecuteNonQuery();
                con.Close();
                if (rowsAffected > 0)
                {
                    DataGrid1.EditItemIndex = -1;
                    LoadsalaryData();
                    lblMessage.Text = "salary record updated successfully.";

                }
                else
                {
                    lblMessage.Text = "Failed to update salary" +
                        "+ record.";
                }
            }
            catch (System.Data.SqlClient.SqlException)
            {

                lblMessage.Text = " Given Staff  Id  doesn't exists ,Kindly insert Valid Id to Add salary";

            }
            catch (Exception)
            {
                lblMessage.Text = "An error occurred. Please contact the administrator.";
            }

        }

            protected void Reset_Click(object sender, EventArgs e)
        {
            ClearInputFields();
        }

        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = -1;
            LoadsalaryData();
        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {
            string salaryid = e.Item.Cells[0].Text;
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand command = new SqlCommand("DeleteSalary", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@salary_id", salaryid);
            con.Open();
            int rowsAffected = command.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                lblMessage.Text = "Delete successful.";
                LoadsalaryData();

            }
            else
            {
                lblMessage.Text = "Delete failed.";
            }
        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            LoadsalaryData();
        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {
            int salaryId = Convert.ToInt32(((TextBox)e.Item.Cells[0].Controls[0]).Text);
            int staffId = Convert.ToInt32(((TextBox)e.Item.Cells[1].Controls[0]).Text);
           string month = (((TextBox)e.Item.Cells[2].Controls[0]).Text);
            int year = Convert.ToInt32(((TextBox)e.Item.Cells[3].Controls[0]).Text);
            decimal amount = Convert.ToDecimal(((TextBox)e.Item.Cells[4].Controls[0]).Text);
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("UpdateSalary", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@salary_id ", salaryId);
            cmd.Parameters.AddWithValue("@staff_id", staffId);
            cmd.Parameters.AddWithValue("@month", month);
            cmd.Parameters.AddWithValue("@year", year);
            cmd.Parameters.AddWithValue("@amount ", amount);
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowsAffected > 0)
            {
                DataGrid1.EditItemIndex = -1;
                LoadsalaryData();
                lblMessage.Text = "salary record updated successfully.";
            }
            else
            {
                lblMessage.Text = "Failed to update salary record.";
            }
        }
    }
}