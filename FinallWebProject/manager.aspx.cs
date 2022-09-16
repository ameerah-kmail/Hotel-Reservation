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
    public partial class manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = "OnLine: " + Application["online"] + "<br>" + "Visited: " + Application["visited"] + "<br>" + "Hits: " + Application["hits"];
            if (!IsPostBack)

                TextBox1.Text = getroomID().ToString();

        }
        int getroomID()
        {
            int max = 0;
            SqlConnection conn = null;
            SqlCommand cmd = null;
            SqlDataReader reader = null;
            try
            {
              conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");
                conn.Open();
                cmd = new SqlCommand(" select max(id) maximum from rooms", conn);
                reader = cmd.ExecuteReader();
                if (reader.Read())
                    max = Int32.Parse(reader["maximum"].ToString()) + 1;
                reader.Close();
                conn.Close();

            }//end try
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }//end catch

            return max;
        }//end getroomid

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string path = @"C:\Users\pc_hp\Desktop\WEBServer\aftersally\aftersally\images\" + FileUpload1.FileName;
                FileUpload1.SaveAs(path);
                Image1.ImageUrl = "images/" + FileUpload1.FileName;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)//add room
        {

            SqlConnection conn = null;
            SqlCommand cmd = null;

            try
            {
                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");
                conn.Open();
                cmd = new SqlCommand("insert into rooms values(@id,@size,@floor,@price,@path) ", conn);
                cmd.Parameters.AddWithValue("id", TextBox1.Text);
                cmd.Parameters.AddWithValue("size", TextBox2.Text);
                cmd.Parameters.AddWithValue("floor", TextBox3.Text);
                cmd.Parameters.AddWithValue("price", TextBox4.Text);
                cmd.Parameters.AddWithValue("path", "images /" + FileUpload1.FileName + "");
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                    Label1.Text = "The room added successfully";
                TextBox1.Text = getroomID().ToString();
                TextBox2.Text = null;
                TextBox3.Text = null;
                TextBox4.Text = null;
                Image1.ImageUrl = null;
                conn.Close();
            }//end try
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }
        }
        //edit room details
        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlConnection conn = null;
            SqlCommand cmd = null;

            try
            {
                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");
                conn.Open();             
                cmd = new SqlCommand("update [rooms] set ID=@id,size=@size,floor=@floor, price=@price,imagpath=@path where Id=@id ", conn);
                cmd.Parameters.AddWithValue("id", TextBox1.Text);
                cmd.Parameters.AddWithValue("size", TextBox2.Text);
                cmd.Parameters.AddWithValue("floor", TextBox3.Text);
                cmd.Parameters.AddWithValue("price", TextBox4.Text);
                cmd.Parameters.AddWithValue("path", "images /"+ FileUpload1.FileName + "");
                
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                Label1.Text = "The peocess successfully";
                TextBox1.Text = getroomID().ToString();
                TextBox2.Text = null;
                TextBox3.Text = null;
                TextBox4.Text = null;
                Image1.ImageUrl = null;
                conn.Close();
            }//end try
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }

        }//end button edit

        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlConnection conn = null;
            SqlCommand cmd = null;

            try
            {
                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");
                conn.Open();
               
                cmd = new SqlCommand("Delete From [rooms] Where Id=@id ", conn);
                cmd.Parameters.AddWithValue("id", TextBox1.Text);
                

                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                    Label1.Text = "The peocess successfully";
                    TextBox1.Text = getroomID().ToString();
                
                       conn.Close();
            }//end try
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");

                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select *from rooms", conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                conn.Close();
            }//end try
            catch (SqlException exp) { Label1.Text = exp.Message; }//end catch
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");

                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select *from reservation",conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                conn.Close();
                GridView2.DataSource = ds;
                GridView2.DataBind();

                
            }//end try
            catch (SqlException exp) { Label1.Text = exp.Message; }//end catch

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataReader reader = null;
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");
                conn.Open();

                SqlCommand cmd = new SqlCommand("select sum(payment) as allpayments from reservation ", conn);

                reader = cmd.ExecuteReader();
                if(reader.Read())

               TextBox5.Text =reader["allpayments"].ToString();

                conn.Close();
            }//end try
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("login.aspx");
        }
    }
}