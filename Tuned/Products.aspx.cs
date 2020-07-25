using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Tuned
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["search"] = null;
        }

        protected void ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                if((Session["login"] != null) && (Session["role"].ToString() == "user"))
                {
                    string email = Session["login"].ToString();
                    string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("productIdLabel")).Text;
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("select * from [ProductDetails] where productId="+ id, con);
                    SqlDataReader reader = cmd1.ExecuteReader();
                    reader.Read();
                    string name = reader["name"].ToString();
                    string price = reader["price"].ToString();
                    string imagepath = reader["imagepath"].ToString();
                    con.Close();

                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("insert into [Cart] (productId, name, price, imagepath, email) values('" + id + "','" + name + "','" + price + "','" + imagepath + "','" + email + "')", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("~/user/Cart.aspx");
                }
                
                else
                {
                    
                }
            }

            else if (e.CommandName == "View1")
            {
                string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("productIdLabel")).Text;
                Session["product"] = id;
                Response.Redirect("~/user/ProductDetail.aspx");
            }

            else if (e.CommandName == "View2")
            {
                string id = ((Label)DataList2.Items[e.Item.ItemIndex].FindControl("productIdLabel")).Text;
                Session["product"] = id;
                Response.Redirect("~/user/ProductDetail.aspx");
            }

            else if (e.CommandName == "Buy")
            {
                string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("productIdLabel")).Text;
                Session["product"] = id;
                Response.Redirect("~/user/Buy.aspx");
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                Session["search"] = TextBox1.Text;
                Label1.Text = "Other featured products";
            }

            else if (TextBox1.Text == "")
            {
                Label1.Text = " ";
            }
        }
    }
}