using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.instructor
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        Tuned.Hash Hash = new Tuned.Hash();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());         //create a new sql connection

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Change_Click(object sender, EventArgs e)
        {
            string email = Session["login"].ToString();
            string oldpassword = Hash.CreateMD5Hash(TextBox1.Text);		        //calling the MD5 function to encrypt password
            string newpassword = Hash.CreateMD5Hash(TextBox3.Text);
            con.Open();                                                 //database connection initialized
            SqlCommand cmd1 = new SqlCommand("select password from [UserDetails] where email = '" + email + "'", con);		//query statement that has to be sent to the database
            SqlDataReader reader = cmd1.ExecuteReader();
            reader.Read();
            string password = reader["password"].ToString();
            reader.Close();
            con.Close();
            if (password.Trim().Equals(oldpassword.Trim()))
            {
                con.Open();
                SqlCommand cmd2 = new SqlCommand("update [InstructorDetails] set password ='" + newpassword + "' where email = '" + email + "'", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/instructor/InstructorProfile.aspx");
            }
            else if (password != oldpassword)
            {
                Label1.Text = "Old password incorrect";
            }
        }
    }
}