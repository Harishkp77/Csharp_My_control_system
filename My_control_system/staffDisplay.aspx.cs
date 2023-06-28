using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Runtime.Remoting.Messaging;

namespace My_control_system
{
    public partial class staffDisplay : System.Web.UI.Page
    {

        private int findstaffid(int userid)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand(" select staff_id from usertable where user_id = @userid", con);
        
            con.Open();
            cmd.Parameters.AddWithValue("@userid", userid);
            int staff_id = 0;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                staff_id = dr.GetInt32(0);
            }

            return staff_id;
        }



        private void BindStaffData1(int userId)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("displaystaff ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@userId", userId);
            SqlDataReader dr = cmd.ExecuteReader();
            StringBuilder sb = new StringBuilder();
            while (dr.Read())
            {
                
                for (int i = 0; i < dr.FieldCount; i++)
                {
                    string label = dr.GetName(i);
                    string value = dr.IsDBNull(i) ? "" : dr.GetValue(i).ToString();

                 
                    string labelHtml = $"<span class='label'>{label}:</span>";
                    string valueHtml = $"<span class='value'>{value}</span>";
                    sb.AppendLine($"<div class='row'>{labelHtml}{valueHtml}</div>");
                }
            }

            dr.Close();
            con.Close();
            infolabel.Text = sb.ToString();
           
        }

        private void BindStaffData2(int staff_id)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("GetSalaryDetails ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@StaffID", staff_id);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            salaryGridView.DataSource = dt;
            salaryGridView.DataBind();
            dr.Close();
            con.Close();

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["userId"] != null)
                {
                    int userId = Convert.ToInt32(Request.QueryString["userId"]);
                     BindStaffData1(userId);
                    int staff_id = findstaffid(userId);
                    BindStaffData2(staff_id);

                }
            }
        }
    }
}