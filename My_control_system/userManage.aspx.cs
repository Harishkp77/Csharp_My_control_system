using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_control_system
{
    public partial class userPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

 

        protected void SignupButton_Click(object sender, EventArgs e)
        {
           

   
        }

     
 

        protected void LoginButton_Click(object sender, EventArgs e)
        {

            string username = loginUsername.Text;
            string password = loginPassword.Text;
          

            if (username == "admin" && password == "0707") 
            {
                Response.Redirect("studentContent.aspx");
            }
            else
            {
                lblMessage.Text = "invalid username and password";
                lblMessage.Visible = true;
            }

        }
        }
    }
