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
    public partial class WebForm1 : System.Web.UI.Page
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
            SqlCommand comm = new SqlCommand("Insert into debtors1_Tab values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "') ", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Inserted');", true);
            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("Select * from debtors1_Tab", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update debtors1_Tab set Address1 ='" + TextBox2.Text + "',Address2 ='" + TextBox3.Text + "',Address3 ='" + TextBox4.Text + "',Balance ='" + TextBox5.Text + "',	SalesYearToDate ='" + TextBox6.Text + "',CostYearToDate ='" + TextBox7.Text + "' where AccountCode = '" + TextBox1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
                con.Open();
                SqlCommand comm = new SqlCommand("delete debtors1_Tab where AccountCode = '" + TextBox1.Text + "'", con);
                comm.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Delete');", true);
                LoadRecord();
            }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Select * from debtors1_Tab where AccountCode = '" + TextBox1.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}