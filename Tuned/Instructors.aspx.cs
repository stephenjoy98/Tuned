using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned
{
    public partial class Instructors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["search"] = null;
        }

        protected void ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "View1")
            {
                string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("emailLabel")).Text;
                Session["email"] = id;
                Response.Redirect("~/instructor/InstructorDetail.aspx");
            }

            else if (e.CommandName == "View2")
            {
                string id = ((Label)DataList2.Items[e.Item.ItemIndex].FindControl("emailLabel")).Text;
                Session["email"] = id;
                Response.Redirect("~/instructor/InstructorDetail.aspx");
            }
        }
    }
}