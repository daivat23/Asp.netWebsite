using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employee
{
    public partial class AddBid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Bid b = new Bid();
            BidHelper h = new BidHelper();
            int txt1 = int.Parse(TextBox1.Text);
            int txt2 = int.Parse(TextBox2.Text);
            b.bid = txt1;
            b.Time = txt2;
            b.Biddate = DateTime.Now.ToString("dd/MM/yyyy");
            b.EmployId = Convert.ToInt32(Session["EmployId"]);
            b.Projectid = 6;
            b.Status = "pending";
            h.save(b);

        }
    }
}