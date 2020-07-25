using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.user
{
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Buy")
            {
                string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("productIdLabel")).Text;
                Session["product"] = id;
                Response.Redirect("~/user/Buy.aspx");
            }

            else if (e.CommandName == "Delete")
            {
                string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
                SqlCommand cmd = new SqlCommand("delete from [Cart] where Id ='" + id + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                filldata();
            }

            else if (e.CommandName == "View")
            {
                string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("productIdLabel")).Text;
                Session["product"] = id;
                Response.Redirect("~/user/ProductDetail.aspx");
            }
        }

        private void filldata()
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from [Cart]", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DataList1.DataBind();
            con.Close();
        }

        protected void BuyAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyAll.aspx");
        }
    }
}