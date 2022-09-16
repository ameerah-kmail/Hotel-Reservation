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
    public partial class grid : System.Web.UI.Page
    {
        int r;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack) { 
                Label1.Text = Session["uname"].ToString();
            
                for (int i = 0; i <= 3; i++)
                {
                    DropDownList1.Items.Add(i + "");


                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotel.mdf;Integrated Security=True");
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select distinct * from  customer,rooms where  size=" + DropDownList1.SelectedItem, conn);

                DataSet ds = new DataSet();
                da.Fill(ds);
                
                GridView1.DataSource = ds;
                GridView1.DataBind();
                conn.Close();
            }
            catch (SqlException exp) { Label2.Text = exp.Message; }
        }//end of DropDownList1_SelectedIndexChanged

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
             r =Int32.Parse( GridView1.SelectedRow.Cells[5].Text);
            float f = float.Parse( GridView1.SelectedRow.Cells[4].Text);
            int p = Int32.Parse(GridView1.SelectedRow.Cells[4].Text);
            Session["roomid"] = r;
            Session["pi"] = p;
            Response.Redirect("WebForm3.aspx");

        }

       
    }

        
    }

