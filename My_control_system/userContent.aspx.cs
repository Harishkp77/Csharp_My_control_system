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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindstudentdata();
        }
        public void bindstudentdata()
        {
            string connection = Application["dbconnect"].ToString();
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("view_user_table", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataGrid1.DataSource = dr;
            DataGrid1.DataBind();
            dr.Close();
            con.Close();
        }

        protected void DataGrid1_CancelCommand1(object source, DataGridCommandEventArgs e)
        {

        }

        protected void DataGrid1_DeleteCommand1(object source, DataGridCommandEventArgs e)
        {

        }

        protected void DataGrid1_EditCommand1(object source, DataGridCommandEventArgs e)
        {

        }

        protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataGrid1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {

        }
    }
}