using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FreeLaincer.Admin
{
    public partial class Review : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from Review");
                Repeater1.DataBind();
            }
               
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btnDelete")
            {

                SqlCommand cm = new SqlCommand("delete from Review where ReviewId=@ReviewId");
                cm.Parameters.AddWithValue("@ReviewId", e.CommandArgument);
                h.cmdExe(cm);
                Repeater1.DataSource = h.GetData("select * from Review");
                Repeater1.DataBind();

            }
        }

    }
}