using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.seller
{
    public partial class SellerLogin : System.Web.UI.Page
    {
        Tuned.Hash Hash = new Tuned.Hash();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
                Response.Redirect("Home.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string role = "seller";
            string email = TextBox1.Text;
            string password = Hash.CreateMD5Hash(TextBox2.Text);		        //calling the MD5 function to encrypt password
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());		    //create a new sql connection
            con.Open();                                                 //database connection initialized
            SqlCommand cmd = new SqlCommand("select * from [SellerDetails] where email = '" + email + "'and password = '" + password + "'", con);		//query statement that has to be sent to the database
            SqlDataAdapter sda = new SqlDataAdapter(cmd);		        //connection created between query and data
            DataSet ds = new DataSet();			                        //creating a  DataSet that consists a collection of objects that you can relate to each other with DataRelation objects
            sda.Fill(ds);		                                        //Adds or refreshes rows in the DataSet to match those in the data source
            if (ds.Tables[0].Rows.Count > 0)		                    //traversing the rows and cross checking the input
            {
                Session["login"] = email;
                Session["role"] = role;
                Response.Redirect("~/seller/SellerProfile.aspx");		                    //Redirects the user to the Home page
            }
            else
            {
                Label1.Text = "Email and/or password incorrect";		//Displays an error in Label if data does not match
            }
            con.Close();		                                        //closing the database connection
        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/SellerSignUp.aspx");
        }

        protected void Forgot_Click(object sender, EventArgs e)
        {

        }
    }
}