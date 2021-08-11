using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FreeLaincer.Admin
{
    public partial class Skill : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from Skill");
                Repeater1.DataBind();
            }
                
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btnDelete")
            {

                SqlCommand cm = new SqlCommand("delete from Skill where SkillId=@SkillId");
                cm.Parameters.AddWithValue("@SkillId", e.CommandArgument);
                h.cmdExe(cm);
                Repeater1.DataSource = h.GetData("select * from Skill");
                Repeater1.DataBind();

            }
            if (e.CommandName == "btnEdit")
            {
                Response.Redirect("Add.aspx?id=" + e.CommandArgument);
            }

        }
    }
}