using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Tuned.seller
{
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string cat = DropDownList1.SelectedItem.Text;
            string price = TextBox2.Text;
            string description = TextBox3.Text;
            string amount = TextBox4.Text;
            string email = Session["login"].ToString();
            Random r = new Random(); //--------------------------------------
            int num = r.Next(); //--------------------------------------
            string imgname = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string imgpath = ("~/Images/Product/" + num.ToString() + imgname.Replace(" ", string.Empty)); //--------------------------------------
            FileUpload1.SaveAs(Server.MapPath(imgpath));
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());         //create a new sql connection
            con.Open();
            string qry = "insert into [ProductDetails] (name,type,price,description,imagepath,email,amount) values('" + name + "','" + cat + "','" + price + "','" + description + "','" + imgpath + "','" + email + "','" + amount + "')";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Product added successfully!";
            Response.AddHeader("REFRESH", "2;URL=SellerProducts.aspx");
        }
    }
}