using FreeLaincer.Admin;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employee
{
    public partial class EmployBid : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from EmployBidView where EmployId="+Session["EmployId"].ToString());
                Repeater1.DataBind();
            }
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btnDelete")
            {

                SqlCommand cm = new SqlCommand("delete from Bid where BidId=@BidId");
                cm.Parameters.AddWithValue("@BidId", e.CommandArgument);
                h.cmdExe(cm);
                Repeater1.DataSource = h.GetData("select * from EmployBidView where EmployId=" + Session["EmployId"].ToString());
                Repeater1.DataBind();

            }
        }
    }
}