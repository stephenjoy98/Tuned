using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Tuned.seller
{
    public partial class SellerProducts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                filldata();
        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/AddProducts.aspx");
        }

        private void filldata()
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from [ProductDetails]", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            //DataList1.DataSource = ds;
            DataList1.DataBind();
            con.Close();
        }

        protected void delete(object source, DataListCommandEventArgs e)
        {
            string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("idLabel")).Text;
            SqlCommand cmd = new SqlCommand("delete from [ProductDetails] where productId ='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            filldata();
        }

        protected void edit(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            filldata();
        }

        protected void cancel(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;
            filldata();
        }

        protected void update(object source, DataListCommandEventArgs e)
        {
            string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
            string name = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox1")).Text;
            string cat = ((DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList1")).Text;
            string price = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox2")).Text;
            string description = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox3")).Text;
            string amount = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox4")).Text;
            Random r = new Random(); //--------------------------------------
            int num = r.Next(); //--------------------------------------
            string imgname = Path.GetFileName(((FileUpload)DataList1.Items[e.Item.ItemIndex].FindControl("FileUpload1")).PostedFile.FileName);
            if (imgname != "")
            {
                string imgpath = ("~/Images/Product/" + num.ToString() + imgname.Replace(" ", string.Empty)); //--------------------------------------
                SqlCommand cmd = new SqlCommand("update [ProductDetails] set name = '" + name + "',type = '" + cat + "',price = '" + price + "',description = '" + description + "',imagepath = '" + imgpath + "',amount = '" + amount + "'where productId ='" + id + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                DataList1.EditItemIndex = -1;
                con.Close();
                filldata();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update [ProductDetails] set name = '" + name + "',type = '" + cat + "',price = '" + price + "',description = '" + description + "',amount = '" + amount + "'where productId ='" + id + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                DataList1.EditItemIndex = -1;
                con.Close();
                filldata();
            }
        }
    }
}