using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FinallWebProject
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["uname"] != null)
                    Label1.Text = Session["uname"].ToString();
                else
                    Response.Redirect("login.aspx");
                if (!IsPostBack)
                    fillItems();

            }

            void fillItems()
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True");
                conn.Open();
                SqlDataReader reader = null;
                SqlCommand cmd = new SqlCommand("select * from customer,reservation where RID="+Session["RID"], conn);
                try
                {
                    reader = cmd.ExecuteReader();
                while (reader.Read())
                    TextBox1.Text = Session["uname"].ToString();
                    TextBox2.Text = Session["rssn"].ToString();
                    TextBox3.Text = Session["rphone"].ToString();
                    TextBox4.Text = Session["remail"].ToString();
                    TextBox5.Text = Session["pwd"].ToString();

                    conn.Close();
                    reader.Close();
                }
                catch (SqlException exp)
                {
                    Label2.Text = exp.Message;

                }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");

                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select distinct * from customer,reservation where cssn="+ TextBox2.Text, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                conn.Close();
                GridView2.DataSource = ds;
                GridView2.DataBind();


            }//end try
            catch (SqlException exp) { Label2.Text = exp.Message; }//end catch

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");
                conn.Open();
                SqlCommand cmd = new SqlCommand("update [customer] set fname=@fname,ssn=@ssn,phone=@phone,email=@email,password=@password where ssn=@ssn", conn);
                cmd.Parameters.AddWithValue("fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("ssn", TextBox2.Text);
                cmd.Parameters.AddWithValue("phone", TextBox3.Text);
                cmd.Parameters.AddWithValue("email", TextBox4.Text);
                cmd.Parameters.AddWithValue("password", TextBox5.Text);
                int r = cmd.ExecuteNonQuery();
                if (r>0)
                Label2.Text = "The peocess successfully";
                TextBox1.Text = null;
                TextBox2.Text = null;
                TextBox3.Text = null;
                TextBox4.Text = null;
                TextBox5.Text = null;
                conn.Close();

            }//end try
            catch (SqlException exp)
            {
                Label2.Text = exp.Message;

            }
        }
    }
}