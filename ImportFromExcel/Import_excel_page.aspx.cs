using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImportFromExcel
{
    public partial class Import_excel_page : System.Web.UI.Page
    {
        static string ExcelPath;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                myBind();
            }
            

        }

        public void myBind()
        {
            DataSet ds = new DataSet();

            string dispCommand = "select * from Details";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlCommand cmd = new SqlCommand(dispCommand, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            SqlDataReader dr = cmd.ExecuteReader();
           // da.Fill(ds);
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                string path = Path.GetFileName(FileUpload1.FileName);
                path = path.Replace(" ", "");
                FileUpload1.SaveAs(Server.MapPath("~/ExcelFile/") + path);
                ExcelPath = Server.MapPath("~/ExcelFile/") + path;
                Label14.Text = "File Uploaded Successfully";
                
            }
            else
            {
                Label14.Text = "Please select a file";
            }
            

        }

         public void exportExcelFile()
         {
            

         }

        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition","attachement;filename=Detail.xls");
            Response.ContentType = "application/excel";

            StringWriter stringWriter = new StringWriter();
            HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);
            GridView1.RenderControl(htmlTextWriter);
            Response.Write(stringWriter.ToString());
            Response.End();
        }
    }
}