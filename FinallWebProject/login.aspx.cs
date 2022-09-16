using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//Hiba Mohammad Alawna 201711773 -section#1
//Ameerah Hassan Kmail 201710888 -section#1
//SALLY BASHEER  AQZOUQ 201711057-section#2

namespace  WebApplication2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True;Connect Timeout=30");

                conn.Open();
                SqlCommand comm = new SqlCommand("select* from customer where fname=@uname and password=@pwd", conn);
                comm.Parameters.AddWithValue("uname", TextBox1.Text);
                comm.Parameters.AddWithValue("pwd", TextBox2.Text);
                SqlDataReader reader = comm.ExecuteReader();
                if (reader.Read())
                {

                    if (string.Equals(reader["ssn"], "405060708"))
                    {
                        
                        Response.Redirect("manager.aspx");

                    }
                    Session["uname"] = reader["fname"];
                    Session["pwd"] = reader["password"];
                    Session["remail"] = reader["email"];
                    Session["rssn"] = reader["ssn"];
                    Session["rphone"] = reader["phone"];
                    Response.Redirect("grid.aspx");

                }
                
                else
                    Label2.Text = "Invalid username or password! ";
            }

            catch (SqlException exe)
            {
                Label2.Text = exe.Message;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}