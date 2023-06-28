using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace My_control_system
{
    public partial class studentDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["userId"] != null)
                {
                    int userId = Convert.ToInt32(Request.QueryString["userId"]);
                     BindStuData(userId);
                    BindStuData1(userId);

                }
            }
        }

        private void BindStuData1(int userId)
        {
            string connection = Application["dbconnect"].ToString();
            using (SqlConnection con = new SqlConnection(connection))
            {
                SqlCommand cmd = new SqlCommand("GetAttendanceSummary", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@user_id", userId);
                con.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
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

                    infolabel2.Text = sb.ToString();
                }
            }
        }





        private void BindStuData(int userId)
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("displaystudent", con);
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
          }
}