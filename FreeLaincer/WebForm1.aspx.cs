using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FreeLaincer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //skill//
            //Skill s = new Skill();
            //SkillHelper sh = new SkillHelper();
            //s.skillname = "php";
            //s.skillname = "C";
            //s.skillname = "Html";
            //s.skillid = 3;
            //sh.Delete(s);
            //sh.Save(s);

            //review//
            //Review a = new Review();
            //ReviewHelper r = new ReviewHelper();
            //a.reviewdate = "1";
            //a.reviewdate = "3";
            //a.reviewdate = "2";
            //a.reviews = "good";
            //a.employerid = 1;
            //a.employid = 1;
            //r.Save(a);
            //a.reviewid = 2;
            //a.reviewdate = "4";
            //a.reviews = "bed";
            //a.employerid = 2;
            //a.employid = 2;
            //r.Update(a);
            //a.reviewid = 3;
            //r.Delete(a);

            //rate//
            //Rate a = new Rate();
            //RateHelper h = new RateHelper();
            //a.employerid = 1;
            //a.employid = 1;
            //a.rate = 3;
            //a.ratedate = "11";

            //a.employerid = 2;
            //a.employid = 2;
            //a.rate = 4;
            //a.ratedate = "12";
            //h.Save(a);

            //a.rateid = 2;
            //a.employerid = 3;
            //a.employid = 4;
            //a.rate = 5;
            //a.ratedate = "15";
            //h.Update(a);

            //a.rateid = 2;
            //h.Delete(a);

            //projectskill//
            //Projectskill s = new Projectskill();
            //ProjectSkillHelper sh = new ProjectSkillHelper();
            //s.projectid = 1;
            //s.skillid = 1;
            //s.projectid = 2;
            //s.skillid = 2;
            //sh.Save(s);
            //s.Psid = 2;
            //s.projectid = 3;
            //s.skillid = 3;
            //sh.Update(s);
            //s.Psid = 2;
            //sh.Delete(s);

            //project//
            Project p = new Project();
            ProjectHelper h = new ProjectHelper();
            p.Projectname = "hello Rectjs";
            p.Projectdate = 2021/02/05;
            p.prise = 5000;
            p.time = 3;
            p.fromdate = 2021/23/05;
            p.todate = 2021/23/10;
            p.EmployerId = 2;
            h.Save(p);
            //p.Projectname = "hello world";
            //p.Projectdate = 2;
            //p.prise = 1000;
            //p.time = 2;
            //p.fromdate = 12/03;
            //p.todate = 30 / 03;
            //p.Projectname = "hello java";
            //p.Projectdate = 3;
            //p.prise = 1100;
            //p.time = 3;
            //p.fromdate = 12 / 03;
            //p.todate = 30 / 03;
            //h.Save(p);
            /////////
            //p.Projectid = 2;
            //p.Projectname = "hello python";
            //p.Projectdate = 5;
            //p.prise = 1100;
            //p.time = 3;
            //p.fromdate = 12 / 03;
            //p.todate = 30 / 03;
            //h.Update(p);
            //p.Projectid = 2;
            //h.Delete(p);

            //employ//
            //Employ a= new Employ();
            //EmployHelper h = new EmployHelper();
            //a.EmployFname = "dev";
            //a.EmployLname = "td";
            //a.Email = "don@gmail.com";
            //a.Address = "pahadi";
            //a.Gender = "male";
            //a.Age = 30;
            //a.Mobile = 1234782;
            //h.Save(a);
            //a.EmployFname = "daivat";
            //a.EmployLname = "trivedi";
            //a.Email = "abc@gmail.com";
            //a.Address = "jay complex b-30";
            //a.Gender = "male";
            //a.Age = 12;
            //a.Mobile = 12345678;
            //h.Save(a);

            //employer//
            //Employer a = new Employer();
            //EmployerHelper h = new EmployerHelper();
            //a.Fname = "daivat";
            //a.Lname = "trivedi";
            //a.Email = "abc@gmail.com";
            //a.Address = "maya nagari";
            //a.Companyname = "domore";
            //h.Save(a);
            //a.Fname = "gargi";
            //a.Lname = "trivedi";
            //a.Email = "cda@gmail.com";
            //a.Address = "svrag";
            //a.Companyname = "growmore";
            //h.Save(a);

            //bid//
            //Bid b = new Bid();
            //BidHelper h = new BidHelper();
            //b.Projectid = 3;
            //b.EmployId = 3;
            //b.Time = 5;
            //b.bid = 200;
            //b.Status = "pass";
            //h.save(b);
            //b.Projectid = 2;
            //b.EmployId = 2;
            //b.Time = 10;
            //b.bid = 250;
            //b.Status = "pass";
            //h.save(b);
            //b.Projectid = 1;
            //b.Employerid = 1;
            //b.Time=12;
            //b.bid = 120;
            //b.Status = "pass";
            //h.save(b);

        }
    }
}