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
            ders.Text = GridView1.SelectedRow.Cells[1].Text;
            egitmenadSoyad.Text = GridView1.SelectedRow.Cells[2].Text + " " + GridView1.SelectedRow.Cells[3].Text;
            dersTipi.Items.Add("Online");
            dersTipi.Items.Add("Yüzyüze");
            //tarihzaman.Text = GridView1.SelectedRow.Cells[2].Text;


        }

        protected void rezKaydet_Click(object sender, EventArgs e)
        {

        }
    }
}