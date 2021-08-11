using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employee
{
    public partial class profile : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Employ a = new Employ();
            String txt1 = (TextBox1.Text);
            String txt2 = (TextBox2.Text);
            String txt3 = (TextBox3.Text);
            String txt4 = (TextBox4.Text);
            int txt5 = int.Parse(TextBox5.Text);
            int txt6 = int.Parse(TextBox6.Text);
            a.EmployFname = txt1;
            a.EmployLname = txt2;
            a.Address = txt3;
            a.Gender = txt4;
            a.Age = txt5;
            a.Mobile = txt6;
            h.EmployUpdate(a);
        }
    }
}