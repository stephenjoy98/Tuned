using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.user
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        Tuned.Hash Hash = new Tuned.Hash();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
                Response.Redirect("~/Home.aspx");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try
            {
                string email = TextBox1.Text;                    //Retrieving input from form
                string contact = TextBox2.Text;                       //Retrieving input from form
                string password = Hash.CreateMD5Hash(TextBox3.Text);     //calling the MD5 function to encrypt password
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());         //create a new sql connection
                con.Open();                                         //database connection initialized
                SqlCommand cmd = new SqlCommand("insert into [UserDetails] (email, cno, password) values('" + email + "','" + contact + "','" + password + "')", con);          //query statement preparing to be sent to the database
                cmd.ExecuteNonQuery();                              //inserting data into database
                con.Close();                                        //closing the database connection
                Response.Redirect("~/UserLogin.aspx");		            //Redirects the user to the Home page
            }
            
            catch (SqlException)
            {
                Label1.Text = "Email already registered, Login to continue...";
            }
        }
    }
}