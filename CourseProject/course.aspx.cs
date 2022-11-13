using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseProject
{
    public partial class course : System.Web.UI.Page
    {
        SqlConnection baglanti2 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ders.Text = GridView1.SelectedRow.Cells[2].Text;
            egitmenadSoyad.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[4].Text;
            dersTipi.Items.Add("Online");
            dersTipi.Items.Add("Yüzyüze");
            //tarihzaman.Text = GridView1.SelectedRow.Cells[2].Text;


        }

        protected void rezKaydet_Click(object sender, EventArgs e)
        {
            baglanti2.Open();
            SqlCommand gonder2 = new SqlCommand();
            gonder2.Connection = baglanti2;

            gonder2.CommandText = "INSERT INTO rezervation ( studentId, reservationDate, reservationTime) VALUES('" + GridView1.SelectedIndex + "','" + Calendar1.SelectedDayStyle + "','" + saat.SelectedValue + "','" + "')";


            gonder2.ExecuteNonQuery();

            baglanti2.Dispose();
            baglanti2.Close();
        }
    }
}