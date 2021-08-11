using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employer
{
    public partial class MyJob : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from Project where EmployerId="+Session["EmployerId"].ToString());
                Repeater1.DataBind();
            }
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btnDelete")
            {

                SqlCommand cm = new SqlCommand("delete from Project where ProjectId=@ProjectId");
                cm.Parameters.AddWithValue("@ProjectId", e.CommandArgument);
                h.cmdExe(cm);
                Repeater1.DataSource = h.GetData("select * from Project where EmployerId="+Session["EmployerId"].ToString());
                Repeater1.DataBind();

            }
            if(e.CommandName == "btnView")
            {
                Response.Redirect("ViewBid.aspx?EmployerId="+e.CommandArgument);
            }
        }
    }
}