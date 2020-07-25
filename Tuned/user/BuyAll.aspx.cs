using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Tuned.user
{
    public partial class BuyAll : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Session["login"].ToString();
            if (Session["dbbtn"] == null)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select SUM(price) as TotalPrice from [Cart] where email='" + email + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                Session["price"] = reader["TotalPrice"].ToString();
                con.Close();
                TotalPrice.Text = ((char)0x20B9).ToString() + "   " + Session["price"].ToString();
            }

            else
            {
                Response.Redirect("Bill.aspx");
            }

            con.Open();
            SqlCommand cmd3 = new SqlCommand("delete from [PrePurchase] where email='" + email + "'", con);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string email = Session["login"].ToString();
            DateTime datetime = DateTime.Now; // will give the date for today
            string date = datetime.ToString("dd-MM-yyyy");

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [PrePurchase] (productId, name, price, imagepath, email) select productId, name, price, imagepath, email from [Cart] where email='" + email + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            con.Open();
            SqlCommand cmd2 = new SqlCommand("update [PrePurchase] set date ='" + date + "' where email='" + email +"'", con);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Payment.aspx");
        }
    }
}