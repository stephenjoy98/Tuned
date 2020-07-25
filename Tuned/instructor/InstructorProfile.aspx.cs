using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.instructor
{
    public partial class InstructorProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());         //create a new sql connection

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void filldata()
        {
            string login = Session["login"].ToString();
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from [InstructorDetails] where email='" + login + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            //DataList1.DataSource = ds;
            DataList1.DataBind();
            con.Close();
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
            string fn = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("fname")).Text;
            string ln = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("lname")).Text;
            string email = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("email")).Text;
            string cno = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("cno")).Text;
            string qua = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("qua")).Text;
            string hno = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("hno")).Text;
            string street = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("sno")).Text;
            string city = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("city")).Text;
            string zip = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("zip")).Text;
            Random r = new Random(); //--------------------------------------
            int num = r.Next(); //--------------------------------------
            string imgname = Path.GetFileName(((FileUpload)DataList1.Items[e.Item.ItemIndex].FindControl("FileUpload1")).PostedFile.FileName);
            if (imgname != "")
            {
                string imgpath = ("~/Images/Product/" + num.ToString() + imgname.Replace(" ", string.Empty)); //--------------------------------------
                SqlCommand cmd = new SqlCommand("update [InstructorDetails] set firstname = '" + fn + "',lastname = '" + ln + "',cno = '" + cno + "',qual = '" + qua + "',imagepath = '" + imgpath + "',hno = '" + hno + "',street = '" + street + "',city = '" + city + "',zip = '" + zip + "' where email ='" + email + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                DataList1.EditItemIndex = -1;
                con.Close();
                filldata();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update [InstructorDetails] set firstname = '" + fn + "',lastname = '" + ln + "',cno = '" + cno + "',qual = '" + qua + "',hno = '" + hno + "',street = '" + street + "',city = '" + city + "',zip = '" + zip + "' where email ='" + email + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                DataList1.EditItemIndex = -1;
                con.Close();
                filldata();
            }
        }
    }
}