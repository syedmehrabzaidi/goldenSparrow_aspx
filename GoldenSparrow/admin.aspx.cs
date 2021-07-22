using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoldenSparrow
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            var con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactbd.mdf';Integrated Security=True;Connect Timeout=30");
            DataSet ds = new DataSet();
           

            string query = "Select * from feed";

          SqlCommand  com = new SqlCommand(query, con);

            //con.Open();
            //SqlDataReader dr = com.ExecuteReader();
            //GridView1.DataSource = dr;
            //GridView1.DataBind();
            //con.Close();

            //ListBox1.DataSource = ds.Tables["feed"];
            //ListBox1.DataTextField = "Name";
            //ListBox1.DataValueField = "Id";
            //ListBox1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "delete from feed where id =" + GridView1.SelectedValue;
            var con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactbd.mdf';Integrated Security=True;Connect Timeout=30");
            SqlCommand comm = new SqlCommand(query, con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          //  int id =Convert.ToInt32(GridView1.SelectedValue);
            var con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactbd.mdf';Integrated Security=True;Connect Timeout=30");
            

            string query = "update feed set name='" + name.Text + "', email='" + email.Text + "',subject='" + subject.Text + "',message='" + message.Text + "'where id = '" + GridView1.SelectedValue+"'";
            SqlCommand comm = new SqlCommand(query, con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactbd.mdf';Integrated Security=True;Connect Timeout=30");

            string query = "select * from feed where id =" + GridView1.SelectedValue;
            SqlCommand comm = new SqlCommand(query, con);
            con.Open();

            SqlDataReader dr = comm.ExecuteReader();
            dr.Read();
            name.Text = dr.GetValue(1).ToString();
            email.Text = dr.GetValue(2).ToString();
            subject.Text = dr.GetValue(3).ToString();
            message.Text = dr.GetValue(4).ToString();
            con.Close();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactbd.mdf';Integrated Security=True;Connect Timeout=30");

            string query = "select * from feed where id =" + ListBox1.SelectedValue;
            SqlCommand comm = new SqlCommand(query, con);
            con.Open();

            SqlDataReader dr = comm.ExecuteReader();
            dr.Read();
            name.Text = dr.GetValue(1).ToString();
            email.Text = dr.GetValue(2).ToString();
            subject.Text = dr.GetValue(3).ToString();
            message.Text = dr.GetValue(4).ToString();
            con.Close();
        }
    }
}