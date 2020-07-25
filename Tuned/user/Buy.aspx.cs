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
    public partial class Buy : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dbbtn"] == null)
            {
                string product = Session["product"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from [ProductDetails] where productId='" + product + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                Session["price"] = reader["price"].ToString();
                con.Close();
            }

            else
            {
                Response.Redirect("Bill.aspx");
            }

            string email = Session["login"].ToString();
            con.Open();
            SqlCommand cmd3 = new SqlCommand("delete from [PrePurchase] where email='" + email + "'", con);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string email = Session["login"].ToString();
            string productId = Session["product"].ToString();
            DateTime datetime = DateTime.Now; // will give the date for today
            string date = datetime.ToString("dd-MM-yyyy");

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [ProductDetails] where productId='" + productId + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            string name = reader["name"].ToString();
            string price = reader["price"].ToString();
            string imagepath = reader["imagepath"].ToString();
            con.Close();

            con.Open();
            SqlCommand cmd2 = new SqlCommand("insert into [PrePurchase] (productId, name, price, imagepath, email) values ('" + productId + "', '" + name + "', '" + price + "', '" + imagepath + "', '" + email + "')", con);
            cmd2.ExecuteNonQuery();
            con.Close();

            con.Open();
            SqlCommand cmd3 = new SqlCommand("update [PrePurchase] set date ='" + date + "' where email='" + email + "'", con);
            cmd3.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Payment.aspx");
        }
    }
}