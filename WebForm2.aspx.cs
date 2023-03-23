using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assesment
{
    public partial class WebForm2 : System.Web.UI.Page
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
            SqlCommand comm = new SqlCommand("Insert into DebtTrans_Tab values('"+TextBox1.Text+ "','" + DropDownList1.SelectedValue + "','" + DateTime.ParseExact(TextBox2.Text, "MM/dd/yyyy", CultureInfo.InvariantCulture) + "','" + TextBox3.Text + "','" + DropDownList2.SelectedValue + "','" + TextBox4.Text + "') ", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Inserted');", true);
            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("Select * from DebtTrans_Tab", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update DebtTrans_Tab set Date ='" + TextBox2.Text + "',AccountCode ='"+DropDownList1.SelectedValue+"',GrossTransactionValue='"+TextBox3.Text+ "',TransactionType='" +DropDownList2.SelectedValue + "',VatValue='" + TextBox4.Text + "'where DocumentNo = '" + TextBox1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('updated');", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete DebtTrans_Tab where DocumentNo = '" + TextBox1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Delete');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Select * from DebtTrans_Tab where DocumentNo = '" + TextBox1.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}