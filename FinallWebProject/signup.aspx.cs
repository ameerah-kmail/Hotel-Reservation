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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
               }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!checkuser())
            {

                try
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");

                    conn.Open();
                    SqlCommand comm = new SqlCommand("insert into customer values( @ssn,@fname,@phone,@email,@password) ", conn);

                    comm.Parameters.AddWithValue("ssn", TextBox3.Text);
                    comm.Parameters.AddWithValue("fname", TextBox1.Text);

                    comm.Parameters.AddWithValue("phone", TextBox2.Text);

                    comm.Parameters.AddWithValue("email", TextBox4.Text);
                    comm.Parameters.AddWithValue("password", TextBox5.Text);
                    int r = comm.ExecuteNonQuery();
                    if (r > 0)
                        Response.Redirect("login.aspx");
                }
                catch (SqlException exe)
                {
                    Label7.Text = exe.Message;

                }



            }
        }
            
            bool checkuser()

            {
                try
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");

                    conn.Open();
                    SqlCommand comm = new SqlCommand("select* from customer where fname=@uname ", conn);
                    comm.Parameters.AddWithValue("uname", TextBox1.Text);
                   
                    SqlDataReader reader = comm.ExecuteReader();
                    if (reader.Read())
                    {
                        Label7.Text = "username already exist,please select other one!";
                        return true;

                    }
                   
                       
                }
                catch (SqlException exe)
                {
                    Label7.Text = exe.Message;

                }
                return false;
            }

        }
    }
