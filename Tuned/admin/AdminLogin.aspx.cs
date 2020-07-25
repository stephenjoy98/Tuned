using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Tuned.Hash Hash = new Tuned.Hash();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
                Response.Redirect("Home.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string role = "admin";
            string username = TextBox1.Text;
            string password = Hash.CreateMD5Hash(TextBox2.Text);
            if ((username == "admin") && (password == "844DB51DD68FD78252F7D815425D7409")) //Tuned@123
            {
                Session["role"] = role;
                Response.Redirect("~/admin/AdminPanel.aspx");
            }
            else
            {
                Label1.Text = "Username and/or password incorrect";
            }
        }
    }
}