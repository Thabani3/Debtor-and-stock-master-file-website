using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assesment
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-UQL21QTI;Initial Catalog=Assesment_db;Integrated Security=True");
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-UQL21QTI;Initial Catalog=Assesment_db;Integrated Security=True");
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into StockMasterFile values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "') ", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Inserted');", true);
            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("Select * from  StockMasterFile", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update StockMasterFile set StockDescription ='" + TextBox2.Text + "',Cost ='" + TextBox3.Text + "',SellingPrice ='" + TextBox4.Text + "',TotalPurchsesExclVat ='" + TextBox5.Text + "',	TotalSalesExclVat ='" + TextBox6.Text + "',QtyPurchased ='" + TextBox7.Text + "',QtySold ='" + TextBox8.Text + "',StockOnHand ='" + TextBox9.Text + "' where StockCode = '" + TextBox1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete StockMasterFile where StockCode = '" + TextBox1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Delete');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Select * from StockMasterFile where StockCode = '" + TextBox1.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}