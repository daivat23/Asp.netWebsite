using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FreeLaincer
{
        public class DbHelper
        {
            protected SqlConnection cn;
            public DbHelper()
            {
                cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|datadirectory|Database1.mdf;Integrated Security=True");
            }
            public void ExecCommand(SqlCommand cmd)
            {

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

            }
            public DataTable GetData(string qry)
            {
                SqlCommand cmd = new SqlCommand(qry, cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds.Tables[0];

            }

        internal void cmdExe(SqlCommand cm)
        {
            //throw new NotImplementedException();
            cm.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter(cm);

            DataSet ds = new DataSet();
            da.Fill(ds);
        }

        public bool EmployLogin(String Email, String Password)
        {
            SqlCommand cm = new SqlCommand("select * from Employ where Email=@Email and Password=@Password", cn);
            cm.Parameters.AddWithValue("@Email", Email);
            cm.Parameters.AddWithValue("@Password", Password);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                HttpContext.Current.Session["Email"] = Email;
                HttpContext.Current.Session["EmployId"] = ds.Tables[0].Rows[0]["EmployId"];
                HttpContext.Current.Session["EmployFname"] = ds.Tables[0].Rows[0]["EmployFname"];
                return true;
            }
            return false;
        }
        public bool EmployerLogin(String Email, String Password)
        {
            SqlCommand cm = new SqlCommand("select * from Employar where Email=@Email and Password=@Password", cn);
            cm.Parameters.AddWithValue("@Email", Email);
            cm.Parameters.AddWithValue("@Password", Password);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                HttpContext.Current.Session["Email"] = Email;
                HttpContext.Current.Session["EmployerId"] = ds.Tables[0].Rows[0]["EmployerId"];
                HttpContext.Current.Session["Fname"] = ds.Tables[0].Rows[0]["Fname"];
                return true;
            }
            return false;
        } 
        public void EmployUpdate(Employ m)
        {
            SqlCommand cm = new SqlCommand("update  employ set EmployFname=@EmployFname,EmployLname=@EmployLname,Address=@Address,Gender=@Gender,Age=@Age,Mobile=@Mobile where employid=@EmployId", cn);
            cm.Parameters.AddWithValue("@EmployFname", m.EmployFname);
            cm.Parameters.AddWithValue("@EmployLname", m.EmployLname);
            cm.Parameters.AddWithValue("@Address", m.Address);
            cm.Parameters.AddWithValue("@Gender", m.Gender);
            cm.Parameters.AddWithValue("@Age", m.Age);
            cm.Parameters.AddWithValue("@Mobile", m.Mobile);
            cm.Parameters.AddWithValue("@EmployId", m.EmployId=Convert.ToInt32(HttpContext.Current.Session["EmployId"]));
            ExecCommand(cm);
        }
        public void EmployerUpdate(Employar m)
        {
            SqlCommand cm = new SqlCommand("update  employar set Fname=@Fname,Lname=@Lname,CompanyName=@CompanyName,Address=@Address where employerid=@EmployerId", cn);
            cm.Parameters.AddWithValue("@Fname", m.Fname);
            cm.Parameters.AddWithValue("@Lname", m.Lname);
            cm.Parameters.AddWithValue("@CompanyName", m.Companyname);
            cm.Parameters.AddWithValue("@Address", m.Address);
            cm.Parameters.AddWithValue("@EmployerId", m.EmployerId=Convert.ToInt32(HttpContext.Current.Session["EmployerId"]));
            ExecCommand(cm);
        }
    }
        public class SkillHelper : DbHelper
        {
            public void Save(Skill m)
            {
                SqlCommand cm = new SqlCommand("insert into Skill(SkillName) values(@SkillName)", cn);
                cm.Parameters.AddWithValue("@SkillName", m.skillname);
                ExecCommand(cm);
            }
            public void Update(Skill m)
            {
                SqlCommand cm = new SqlCommand("update  Skill set SkillName=@Skillname where SkillId=@Skillid", cn);
                cm.Parameters.AddWithValue("@SkillName", m.skillname);
            cm.Parameters.AddWithValue("@SkillId", m.skillid);
                ExecCommand(cm);
            }
            public void Delete(Skill m)
            {
                SqlCommand cm = new SqlCommand("delete from skill where skillid=@SkillId", cn);
                cm.Parameters.AddWithValue("@SkillId", m.skillid);
                ExecCommand(cm);
            }
        }

        public class ReviewHelper : DbHelper
        {
            public void Save(Review m)
            {
                SqlCommand cm = new SqlCommand("insert into Review(ReviewDate,Reviews,EmployerId,EmployId,Type) values(@ReviewDate,@Reviews,@EmployerId,@EmployId,@Type)", cn);
                cm.Parameters.AddWithValue("@ReviewDate", m.reviewdate);
                cm.Parameters.AddWithValue("@Reviews", m.reviews);
                cm.Parameters.AddWithValue("@EmployerId", m.employerid);
                cm.Parameters.AddWithValue("@EmployId", m.employid);
                cm.Parameters.AddWithValue("@Type", m.Type);
                ExecCommand(cm);
            }
            public void Update(Review m)
            {
                SqlCommand cm = new SqlCommand("update  review set ReviewDate=@ReviewDate,reviews=@Reviews,employerid=@EmployerId,employid=@EmployId,Type=@Type where reviewid=@ReviewId", cn);
                cm.Parameters.AddWithValue("@ReviewDate", m.reviewdate);
                cm.Parameters.AddWithValue("@Reviews", m.reviews);
                cm.Parameters.AddWithValue("@EmployerId", m.employerid);
                cm.Parameters.AddWithValue("@EmployId", m.employid);
                cm.Parameters.AddWithValue("@Type", m.Type);
                cm.Parameters.AddWithValue("@ReviewId", m.reviewid);
                ExecCommand(cm);
            }
            public void Delete(Review m)
            {
                SqlCommand cm = new SqlCommand("delete from review where reviewid=@ReviewId", cn);
                cm.Parameters.AddWithValue("@ReviewId", m.reviewid);
                ExecCommand(cm);
            }
        }

        public class RateHelper : DbHelper
        {
            public void Save(Rate m)
            {
                SqlCommand cm = new SqlCommand("insert into rate(EmployerId,EmployId,Rate,RateDate,Type) values(@EmployerId,@EmployId,@Rate,@RateDate,@Type)", cn);
                cm.Parameters.AddWithValue("@EmployerId", m.employerid);
                cm.Parameters.AddWithValue("@EmployId", m.employid);
                cm.Parameters.AddWithValue("@Rate", m.rate);
                cm.Parameters.AddWithValue("@RateDate", m.ratedate);
                cm.Parameters.AddWithValue("@Type", m.Type);
                ExecCommand(cm);
            }
            public void Update(Rate m)
            {
                SqlCommand cm = new SqlCommand("update  rate set employerid=@EmployerId,employid=@EmployId,ratedate=@RateDate,rate=@Rate,Type=@Type where rateid=@RateId", cn);
                cm.Parameters.AddWithValue("@EmployerId", m.employerid);
                cm.Parameters.AddWithValue("@EmployId", m.employid);
                cm.Parameters.AddWithValue("@Rate", m.rate);
                cm.Parameters.AddWithValue("@RateDate", m.ratedate);
                cm.Parameters.AddWithValue("@Type", m.Type);
                cm.Parameters.AddWithValue("@RateId", m.rateid);
                ExecCommand(cm);
            }
            public void Delete(Rate m)
            {
                SqlCommand cm = new SqlCommand("delete from rate where rateid=@RateId", cn);
                cm.Parameters.AddWithValue("@Rateid", m.rateid);
                ExecCommand(cm);
            }
        }

        public class ProjectSkillHelper : DbHelper
        {
            public void Save(Projectskill m)
            {
                SqlCommand cm = new SqlCommand("insert into projectskill(ProjectId,SkillId) values(@ProjectId,@SkillId)", cn);
                cm.Parameters.AddWithValue("@ProjectId", m.projectid);
                cm.Parameters.AddWithValue("@SkillId", m.skillid);
                ExecCommand(cm);
            }
            public void Update(Projectskill m)
            {
                SqlCommand cm = new SqlCommand("update  projectskill set ProjectId=@ProjectId,SkillId=@SkillId where psid=@PsId", cn);
                cm.Parameters.AddWithValue("@ProjectId", m.projectid);
                cm.Parameters.AddWithValue("@SkillId", m.skillid);
            cm.Parameters.AddWithValue("@PsId", m.Psid);
                ExecCommand(cm);
            }
            public void Delete(Projectskill m)
            {
                SqlCommand cm = new SqlCommand("delete from projectskill where psid=@PsId", cn);
                cm.Parameters.AddWithValue("@PsId", m.Psid);
                ExecCommand(cm);
            }
        }

        public class ProjectHelper : DbHelper
        {
            public void Save(Project m)
            {
                SqlCommand cm = new SqlCommand("insert into project(ProjectName,ProjectDate,Prise,Time,FromDate,ToDate,EmployerId) values(@ProjectName,@ProjectDate,@Prise,@Time,@FromDate,@ToDate,@EmployerId)", cn);
                cm.Parameters.AddWithValue("@ProjectName", m.Projectname);
                cm.Parameters.AddWithValue("@ProjectDate", m.Projectdate);
                cm.Parameters.AddWithValue("@Prise", m.prise);
                cm.Parameters.AddWithValue("@Time", m.time);
                cm.Parameters.AddWithValue("@FromDate", m.fromdate);
                cm.Parameters.AddWithValue("@ToDate", m.todate);
                cm.Parameters.AddWithValue("@EmployerId", m.EmployerId);
                ExecCommand(cm);
            }
            public void Update(Project m)
            {
                SqlCommand cm = new SqlCommand("update  project set ProjectName=@ProjectName,ProjectDate=@ProjectDate,Prise=@Prise,Time=@Time,FromDate=@FromDate,ToDate=@ToDate,EmployerId=@EmployerId where projectid=@ProjectId", cn);
                cm.Parameters.AddWithValue("@ProjectName", m.Projectname);
                cm.Parameters.AddWithValue("@ProjectDate", m.Projectdate);
                cm.Parameters.AddWithValue("@Prise", m.prise);
                cm.Parameters.AddWithValue("@Time", m.prise);
                cm.Parameters.AddWithValue("@FromDate", m.fromdate);
                cm.Parameters.AddWithValue("@ToDate", m.todate);
            cm.Parameters.AddWithValue("@EmployerId", m.EmployerId);
            cm.Parameters.AddWithValue("@ProjectId", m.Projectid);
                ExecCommand(cm);
            }
            public void Delete(Project m)
            {
                SqlCommand cm = new SqlCommand("delete from project where projectid=@ProjectId", cn);
                cm.Parameters.AddWithValue("@ProjectId", m.Projectid);
                ExecCommand(cm);
            }
        }

        public class EmployarHelper : DbHelper
        {
            public void Save(Employar m)
            {
                SqlCommand cm = new SqlCommand("insert into employar(Fname,Lname,Email,CompanyName,Address,Password) values(@Fname,@Lname,@Email,@CompanyName,@Address,@Password)", cn);
                cm.Parameters.AddWithValue("@Fname", m.Fname);
                cm.Parameters.AddWithValue("@Lname", m.Lname);
                cm.Parameters.AddWithValue("@Email", m.Email);
                cm.Parameters.AddWithValue("@CompanyName", m.Companyname);
                cm.Parameters.AddWithValue("@Address", m.Address);
                cm.Parameters.AddWithValue("@Password", m.Password);
                ExecCommand(cm);
            }
            public void Update(Employar m)
            {
                SqlCommand cm = new SqlCommand("update  employar set Fname=@Fname,Lname=@Lname,Email=@Email,CompanyName=@CompanyName,Address=@Address,Password=@Password where employerid=@EmployerId", cn);
                cm.Parameters.AddWithValue("@Fname", m.Fname);
                cm.Parameters.AddWithValue("@Lname", m.Lname);
                cm.Parameters.AddWithValue("@Email", m.Email);
                cm.Parameters.AddWithValue("@CompanyName", m.Companyname);
                cm.Parameters.AddWithValue("@Address", m.Address);
                cm.Parameters.AddWithValue("@Password", m.Password);
                cm.Parameters.AddWithValue("@EmployerId", m.EmployerId);
                ExecCommand(cm);
            }
            public void Delete(Employar m)
            {
                SqlCommand cm = new SqlCommand("delete from employar where employerid=@EmployerId", cn);
                cm.Parameters.AddWithValue("@EmployerId", m.EmployerId);
                ExecCommand(cm);
            }
        }
        public class EmployHelper : DbHelper
        {
            public void Save(Employ m)
            {
                SqlCommand cm = new SqlCommand("insert into employ(EmployFname,EmployLname,Email,Address,Gender,Age,Mobile,Password) values(@EmployFname,@EmployLname,@Email,@Address,@Gender,@Age,@Mobile,@Password)", cn);
                cm.Parameters.AddWithValue("@EmployFname", m.EmployFname);
                cm.Parameters.AddWithValue("@EmployLname", m.EmployLname);
                cm.Parameters.AddWithValue("@Email", m.Email);
                cm.Parameters.AddWithValue("@Address", m.Address);
                cm.Parameters.AddWithValue("@Gender", m.Gender);
                cm.Parameters.AddWithValue("@Age", m.Age);
                cm.Parameters.AddWithValue("@Mobile", m.Mobile);
                cm.Parameters.AddWithValue("@Password", m.Password);
                ExecCommand(cm);
            }
            public void Update(Employ m)
            {
                SqlCommand cm = new SqlCommand("update  employ set EmployFname=@EmployFname,EmployLname=@EmployLname,Email=@Email,Address=@Address,Gender=@Gender,Age=@Age,Mobile=@Mobile,Password=@Password where employid=@EmployId", cn);
                cm.Parameters.AddWithValue("@EmployFname", m.EmployFname);
                cm.Parameters.AddWithValue("@EmployLname", m.EmployLname);
                cm.Parameters.AddWithValue("@Email", m.Email);
                cm.Parameters.AddWithValue("@Address", m.Address);
                cm.Parameters.AddWithValue("@Gender", m.Gender);
                cm.Parameters.AddWithValue("@Age", m.Age);
                cm.Parameters.AddWithValue("@Mobile", m.Mobile);
                cm.Parameters.AddWithValue("@Password", m.Password);
                cm.Parameters.AddWithValue("@EmployId", m.EmployId);
                ExecCommand(cm);
            }
            public void Delete(Employ m)
            {
                SqlCommand cm = new SqlCommand("delete from employ where employid=@EmployId", cn);
                cm.Parameters.AddWithValue("@EmployId", m.EmployId);
                ExecCommand(cm);
            }
        }

        public class BidHelper : DbHelper
        {
            public void save(Bid m)
            {
                SqlCommand cm = new SqlCommand("insert into bid(ProjectId,EmployId,Time,Bid,Status,Biddate) values(@ProjectId,@EmployId,@Time,@Bid,@Status,@Biddate)", cn);
                cm.Parameters.AddWithValue("@ProjectId", m.Projectid);
                cm.Parameters.AddWithValue("@EmployId", m.EmployId= Convert.ToInt32(HttpContext.Current.Session["EmployId"]));
                cm.Parameters.AddWithValue("@Time", m.Time);
                cm.Parameters.AddWithValue("@Bid", m.bid);
                cm.Parameters.AddWithValue("@Status", m.Status);
            cm.Parameters.AddWithValue("@Biddate", m.Biddate);
                ExecCommand(cm);
            }
            public void Update(Bid m)
            {
                SqlCommand cm = new SqlCommand("update  bid set ProjectId=@ProjectId,EmployId=@EmployId,Time=@Time,Bid=@Bid,Status=@Status,Biddate=@Biddate where Bidid=@BidId", cn);
                cm.Parameters.AddWithValue("@ProjectId", m.Projectid);
                cm.Parameters.AddWithValue("@EmployId", m.EmployId);
                cm.Parameters.AddWithValue("@Time", m.Time);
                cm.Parameters.AddWithValue("@Bid", m.bid);
                cm.Parameters.AddWithValue("@Status", m.Status);
            cm.Parameters.AddWithValue("@BidId", m.Bidid);
            cm.Parameters.AddWithValue("@Biddate", m.Biddate);
                ExecCommand(cm);
            }
            public void Delete(Bid m)
            {
                SqlCommand cm = new SqlCommand("delete from bid where bidid=@BidId", cn);
                cm.Parameters.AddWithValue("@BidId", m.Bidid);
                ExecCommand(cm);
            }
        }
 }