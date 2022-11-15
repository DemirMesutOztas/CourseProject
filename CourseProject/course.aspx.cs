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
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand sorgula2 = new SqlCommand("INSERT INTO reservation ( date, hour, lessonname) VALUES ( @tarih, @saat, @ders)", baglan);

            var trh = GridView1.SelectedRow.FindControl("tarih") as TextBox;
            string trh2 = trh.Text;

            var st = GridView1.SelectedRow.FindControl("saat") as DropDownList;
            string st2 = st.SelectedItem.Value;

            string id = GridView1.SelectedRow.Cells[5].Text;
            Label1.Text = "Merhaba" + id;
          

            sorgula2.Parameters.AddWithValue("@ders", GridView1.SelectedRow.Cells[1].Text);
            sorgula2.Parameters.AddWithValue("@tarih", trh2 );
            sorgula2.Parameters.AddWithValue("@saat", st2);
            //sorgula2.Parameters.AddWithValue("@teacher",id2 );
            //sorgula2.Parameters.AddWithValue("@student", id2);
            baglan.Open();
            sorgula2.ExecuteNonQuery();

            baglan.Close();
            baglan.Dispose();
        }
    }
}