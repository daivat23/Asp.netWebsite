using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer
{
    public partial class Add : System.Web.UI.Page
    {
        Skill a = new Skill();
        SkillHelper h = new SkillHelper();

        protected void Page_Load(object sender, EventArgs e)
        {
           if(Request.QueryString["id"]!=null)
            {
                DataTable dt = h.GetData("select * from skill where skillid=" + Request.QueryString["id"].ToString());
                if (dt.Rows.Count > 0)
                {
                    txtSkillName.Text =dt.Rows[0]["SkillName"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            a.skillname = txtSkillName.Text;
            if (Request.QueryString["id"] != null)
            {
                a.skillid = (Convert.ToInt32(Request.QueryString["id"].ToString()));
                h.Update(a);
            }
            else
            {
                h.Save(a);
            }
         
        }
    }
}