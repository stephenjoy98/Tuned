using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuned.user
{
    public partial class ViewOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                string id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("productIdLabel")).Text;
                Session["product"] = id;
                Response.Redirect("~/user/ProductDetail.aspx");
            }
        }
    }
}