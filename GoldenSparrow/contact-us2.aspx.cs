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
    public partial class contact_us2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string query = "Insert into feedback values('" + name.Text + "','" + email.Text + "','" + subject.Text + "','" + message.Text + "')";
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactdatabase.mdf';Integrated Security=True;Connect Timeout=30");
            //SqlCommand com = new SqlCommand(query, con);
            //con.Open();
            //com.ExecuteNonQuery();
            //con.Close();
            //Label1.Text = "Student Added Successfully";

            //SqlDataAdapter  adp = new SqlDataAdapter("Select * from feedback", con);
            //    DataSet ds = new DataSet();
            //    adp.Fill(ds, "feedback");

            //    DataRow dr = ds.Tables["feedback"].NewRow();
            //    dr["name"] = name.Text;
            //    dr["email"] = email.Text;
            //    dr["subject"] = subject.Text;
            //    dr["message"] = message.Text;

            //    ds.Tables["feedback"].Rows.Add(dr);
            // SqlCommandBuilder   builder = new SqlCommandBuilder(adp);
            //    adp.Update(ds, "feedback");

            //var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactdatabase.mdf';Integrated Security=True;Connect Timeout=30");
            //DataSet ds = new DataSet();
            //SqlDataAdapter adpt = new SqlDataAdapter("Select * from feedback ", conn);
            //adpt.Fill(ds, "feedback");

            //DataRow dr = ds.Tables["feedback"].NewRow();
            //dr["name"] = name.Text;
            //dr["email"] = email.Text;
            //dr["subject"] = subject.Text;

            //ds.Tables["feedback"].Rows.Add(dr);

            //SqlCommandBuilder buil = new SqlCommandBuilder(adpt);
            //adpt.Update(ds, "feedback");

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactbd.mdf";Integrated Security=True;Connect Timeout=30");
            //DataSet ds = new DataSet();
            //SqlDataAdapter adpt = new SqlDataAdapter("Select * from feedback", conn);
            //adpt.Fill(ds, "feedback");

            //DataRow dr = ds.Tables["feedback"].NewRow();
            //dr["name"] = TextBox1.Text;
            //dr["email"] = email.Text;
            //dr["subject"] =subject.Text;

            //ds.Tables["feedback"].Rows.Add(dr);

            //SqlCommandBuilder buil = new SqlCommandBuilder(adpt);
            //adpt.Update(ds, "feedback");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            var con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\vpl prastise\wplproject2\GoldenSparrow\GoldenSparrow\contactbd.mdf';Integrated Security=True;Connect Timeout=30");
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = new SqlDataAdapter("Select * from feed", con);
            adpt.Fill(ds,"feed");

            DataRow dr = ds.Tables["feed"].NewRow();
            dr["name"] = name.Text;
            dr["email"] = email.Text;
            dr["subject"] = subject.Text;
            dr["message"] = message.Text;

            ds.Tables["feed"].Rows.Add(dr);

            SqlCommandBuilder buil = new SqlCommandBuilder(adpt);
            adpt.Update(ds, "feed");
            Label2.Text = "Your Feedback Submint Successfully";
            Label2.Visible = true;
        }
    }
}