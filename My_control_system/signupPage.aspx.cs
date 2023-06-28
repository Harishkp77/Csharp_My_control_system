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
    public partial class signupPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int insertuserdata(string user_username, string user_password, string user_role, int? staffid, int? studentid)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("insert_user ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@user_username", user_username);
            cmd.Parameters.AddWithValue("@user_password", user_password);
            cmd.Parameters.AddWithValue("@user_role", user_role);
            cmd.Parameters.AddWithValue("@staff_Id ", staffid);
            cmd.Parameters.AddWithValue("@student_Id ", studentid);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            return x;
        }

        protected void SignupButton_Click(object sender, EventArgs e)
        {
            string username = signupUsername.Text;
            string password = signupPassword.Text;
            string role = signupRole.SelectedValue;
            int? staffId = null;
            int? studentId = null;

            if (role == "staff")
            {
                staffId = Convert.ToInt32(signupStaff.Text);
            }
            else if (role == "student")
            {
                studentId = Convert.ToInt32(signupStudent.Text);
            }

            int rowsAffected = insertuserdata(username,password,role,staffId, studentId);
            if (rowsAffected > 0)
            {
                lblMessage.Text = "user registration successful.";
                lblMessage.Visible = true;
               signupUsername.Text=string.Empty;
               signupPassword.Text= string.Empty;
          
            }
            else
            {
                lblMessage.Text = "Failed to register user.";
            }

        }

        protected void GotoLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userManage.aspx");
        }
    }
    }
