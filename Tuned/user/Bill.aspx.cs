using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.user
{
    public partial class Bill : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TotalPrice.Text = Session["price"].ToString();
            Session["dbbtn"] = "1";
            DateTime datetime = DateTime.Now; // will give the date for today
            string date = datetime.ToString();
            Label1.Text = date;

        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            string email = Session["login"].ToString();
            DateTime datetime = DateTime.Now; // will give the date for today
            string date = datetime.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [Purchases] (productId, name, price, imagepath, email, date) select productId, name, price, imagepath, email, date from [PrePurchase]", con);
            cmd.ExecuteNonQuery();
            con.Close();

            con.Open();
            SqlCommand cmd2 = new SqlCommand("delete from [Cart] where email='" + email + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();

            con.Open();
            SqlCommand cmd3 = new SqlCommand("delete from [PrePurchase] where email='" + email + "'", con);
            cmd3.ExecuteNonQuery();
            con.Close();

            Session["dbbtn"] = null;
            Response.Redirect("~/Home.aspx");
        }
    }
}