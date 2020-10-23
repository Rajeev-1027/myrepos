using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImportFromExcel
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_Excel_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
           
         
            string insertCommand = "insert into Details (Name,Age,Gender,Email) values (@name, @age, @gender,@email)";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlCommand cmd = new SqlCommand(insertCommand,con);
            cmd.Parameters.AddWithValue("@name",txtbx_Name.Text);
            cmd.Parameters.AddWithValue("@age",txtbx_Age.Text);
            cmd.Parameters.AddWithValue("@gender",txtbx_Gender.Text);
            cmd.Parameters.AddWithValue("@email",txtbx_Email.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_status.Text = "File uploaded Successfully";
           
        }

        protected void btn_grid_Click(object sender, EventArgs e)
        {
            Response.Redirect("Import_excel_page.aspx");
        }
    }
}