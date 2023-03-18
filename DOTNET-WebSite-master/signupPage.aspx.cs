using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace AssignmentProject_DOTNET
{
    public partial class signupPage : System.Web.UI.Page
    {

        public static string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Asus\\Desktop\\ASP.NET\\AssignmentProject_DOTNET\\App_Data\\Database1.mdf;Integrated Security=True";
        public static SqlConnection con = new SqlConnection(cs);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {            
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into signupTBL (fname,lname,gender,email,address,username,password) values ('"+TextBoxFname.Text+ "','" + TextBoxLname.Text + "','" + DropDownListGender.SelectedItem.Value + "','" + TextBoxEmail.Text + "','" + TextBoxAddress.Text + "','" + TextBoxUserName.Text + "','" + TextBoxPassword.Text + "')", con);

            SqlDataAdapter a = new SqlDataAdapter(cmd);

            int check = a.SelectCommand.ExecuteNonQuery();

            if(check>0)
            {
                ClientScript.RegisterStartupScript(typeof(Page),"script","alert('SignUp Successful !!! User Name  : "+TextBoxUserName.Text+"');",true);
                Response.Redirect("Default.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Sign Up Failed !!!')<script/>");
            }

            con.Close();
        }
    }
}


