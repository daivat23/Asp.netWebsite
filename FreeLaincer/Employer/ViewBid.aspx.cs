using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employer
{
    public partial class ViewBid : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from EmployerBidView where EmployerId=" + Request.QueryString["EmployerId"].ToString());
                Repeater1.DataBind();
            }
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btnRate")
            {
                Response.Redirect("EmployerRate.aspx?EmployId=" + e.CommandArgument);
            }
        }
    }
}