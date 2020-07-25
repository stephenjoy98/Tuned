using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned
{
    public partial class NestedMasterPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"] != null) && (Session["role"].ToString() == "user"))
            {
                if(Session["username"] != null)
                {
                    Label2.Text = Session["login"].ToString();
                }
                Label2.Text = "";
                MultiView1.ActiveViewIndex = 2;
            }

            else if ((Session["login"] != null) && (Session["role"].ToString() != "user"))
            {
                if (Session["username"] != null)
                {
                    Label1.Text = Session["login"].ToString();
                }
                Label2.Text = "";
                MultiView1.ActiveViewIndex = 1;
            }

            else if (Session["login"] == null)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void Cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/Cart.aspx");
        }

        protected void Profile1_Click(object sender, EventArgs e)
        {
            if (Session["role"].ToString() == "user")
                Response.Redirect("~/user/UserProfile.aspx");
            else if (Session["role"].ToString() == "seller")
                Response.Redirect("~/seller/SellerProfile.aspx");
            else if (Session["role"].ToString() == "instructor")
                Response.Redirect("~/instructor/InstructorProfile.aspx");
        }

        protected void Profile2_Click(object sender, EventArgs e)
        {
            if (Session["role"].ToString() == "user")
                Response.Redirect("~/user/UserProfile.aspx");
            else if (Session["role"].ToString() == "seller")
                Response.Redirect("~/seller/SellerProfile.aspx");
            else if (Session["role"].ToString() == "instructor")
                Response.Redirect("~/instructor/InstructorProfile.aspx");
        }

        protected void LogOut1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Home.aspx");
        }

        protected void LogOut2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Home.aspx");
        }
    }
}