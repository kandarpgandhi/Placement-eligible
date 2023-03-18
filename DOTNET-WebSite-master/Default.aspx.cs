using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AssignmentProject_DOTNET
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Asus\\Desktop\\ASP.NET\\AssignmentProject_DOTNET\\App_Data\\Database1.mdf;Integrated Security=True";
        public static SqlConnection con = new SqlConnection(cs);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            //SqlConnection con = new SqlConnection(cs);

            //string query = "select * from signupTBL where username=@user and password=@pass";            

            //SqlCommand cmd = new SqlCommand(query, con);
            //cmd.Parameters.AddWithValue("@user", TextBoxUname.Text);
            //cmd.Parameters.AddWithValue("@pass", TextBoxPass.Text);

            //con.Open();

            SqlCommand cmd = new SqlCommand("select * from signupTBL where username = '"+TextBoxUname.Text+"' and password = '"+TextBoxPass.Text+"'", con);

            SqlDataReader dr = cmd.ExecuteReader();

            if(dr.HasRows)
            {
                Session["user"] = TextBoxUname.Text;
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successful !!! ')</script>");                
                Response.Redirect("ShowData.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!! ')</script>");
            }

            con.Close();
        }
    }
}