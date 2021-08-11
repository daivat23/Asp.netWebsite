using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Admin
{
    public partial class Employar : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from Employar");
                Repeater1.DataBind();
            }
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btnDelete")
            {

                SqlCommand cm = new SqlCommand("delete from Employar where EmployerId=@EmployerId");
                cm.Parameters.AddWithValue("@EmployerId", e.CommandArgument);
                h.cmdExe(cm);
                Repeater1.DataSource = h.GetData("select * from Employar");
                Repeater1.DataBind();

            }
        }
    }
}