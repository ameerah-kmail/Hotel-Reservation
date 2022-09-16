using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime dt1 = DateTime.Parse(TextBox2.Text);
            DateTime dt2 = DateTime.Parse(TextBox1.Text);

            TimeSpan ts = dt1 - dt2;
            float s = ts.Days;

            float t = s * Int32.Parse(Session["pi"].ToString());
            TextBox5.Text = t.ToString();
            Session["sdate"] = dt1;
            Session["edate"] = dt2;
            Session["payment"] = t;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try

            {

                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True");
                conn.Open();
                SqlCommand comm = new SqlCommand("insert into reservation(roomid,cssn,startdate,enddate,payment) values( @room,@ssn,@sd,@ed,@pay) ", conn);

                comm.Parameters.AddWithValue("room", Session["roomid"]);
                comm.Parameters.AddWithValue("ssn", Session["rssn"]);


                comm.Parameters.AddWithValue("sd", Session["sdate"]);

                comm.Parameters.AddWithValue("ed", Session["edate"]);
                comm.Parameters.AddWithValue("pay", Session["payment"]);
                int r = comm.ExecuteNonQuery();
                if (r > 0)
                    Label2.Text = "yor regestration is successful";
            }

            catch (SqlException exp) { Label2.Text = exp.Message; }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");

                conn.Open();
                SqlCommand comm = new SqlCommand("select* from customer,reservation where ssn="+ Session["rssn"], conn);
                SqlDataReader reader = comm.ExecuteReader();
                if (reader.Read())
                {

                    /*   if (string.Equals(reader["ssn"], "405060708"))
                        {

                            Response.Redirect("manager.aspx");

                        }*/
                    Session["RID"] = reader["RID"];
                    Session["uname"] = reader["fname"];
                    Session["pwd"] = reader["password"];
                    Session["remail"] = reader["email"];
                    Session["rssn"] = reader["ssn"];
                    Session["rphone"] = reader["phone"];
                    Response.Redirect("profile.aspx");

                }

            }

            catch (SqlException exe)
            {
                Label2.Text = exe.Message;

            }
        }
    }
}