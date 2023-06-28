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
    public partial class loginuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private object AuthenticateUser(string username, string password)
        {

            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("user_athenticate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            object userid = cmd.ExecuteScalar();
            return userid;
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = loginUsername.Text;
            string password = loginPassword.Text;
            object userid = AuthenticateUser(username, password);
           if (userid != null)
            {
                int userId = int.Parse(userid.ToString());
                Response.Redirect("studentDisplay.aspx?userId=" + userId);
            }


            else
            {
                lblMessage.Text = "invalid username and password";
                lblMessage.Visible = true;
            }


        }
    }
}
