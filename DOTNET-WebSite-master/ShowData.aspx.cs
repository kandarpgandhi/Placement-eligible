using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AssignmentProject_DOTNET
{
    public partial class ShowData : System.Web.UI.Page
    {
        public static string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Asus\\Desktop\\ASP.NET\\AssignmentProject_DOTNET\\App_Data\\Database1.mdf;Integrated Security=True";
        public static SqlConnection con = new SqlConnection(cs);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Write("Welcome ... " + Session["user"].ToString());
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Session["user"] = null;
                //Response.Redirect("Default.aspx");

                Session.Remove("user");
                Session.RemoveAll();                

                Response.Redirect("Default.aspx");
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into cpiTBL (idno,cpi) values ('" + TextBoxIdno.Text + "','" + TextBoxCpi.Text + "')", con);

            SqlDataAdapter a = new SqlDataAdapter(cmd);

            int check = a.SelectCommand.ExecuteNonQuery();
            float CpiDetail = float.Parse(TextBoxCpi.Text);

            if (check > 0)
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Data Added Successfully')<script/>");
                if(CpiDetail > 8.0)
                {
                    //Response.Write("You Are Eligible for Placements!!");
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!! ')</script>");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You Are Eligible For Placements');</script>");                    
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You Are NOT Eligible For Placements');</script>");
                    //Response.Write("You Are NOT Eligible for Placements!!");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Data Not Added Successfully')<script/>");
            }

            con.Close();
        }

        protected void ButtonShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("showDetail.aspx");
        }
    }
}