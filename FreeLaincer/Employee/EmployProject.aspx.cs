using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employee
{
    public partial class EmployProject : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from ProjectView");
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btnAdd")
            {
                Response.Redirect("AddBid.aspx");
            }
            if(e.CommandName == "btnRate")
            {
                Response.Redirect("EmployRate.aspx?ProjectId="+e.CommandArgument);
            }
        }
    }
}