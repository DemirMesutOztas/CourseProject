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
            SqlCommand sorgula2 = new SqlCommand("INSERT INTO reservation (teacherId,studentId, date, hour, lessonname, lessontype) VALUES ( @teacher, @student, @tarih, @saat, @ders, @derstipi)", baglan);

            


            var trh = GridView1.SelectedRow.FindControl("tarih") as TextBox;
            string trh2 = trh.Text;

            var st = GridView1.SelectedRow.FindControl("saat") as DropDownList;
            string st2 = st.SelectedItem.Value;

            var id = GridView1.SelectedRow.FindControl("trid") as Label;
            
            string id2 = id.Text;
            Label1.Text = "Merhaba" + id2;
            int id3 = int.Parse(id2);

            string sessionId = Session["studentId"].ToString();
            int stdId = int.Parse(sessionId);

            var derstipi = GridView1.SelectedRow.FindControl("dersTipi") as DropDownList;
            string dersTipi2 = derstipi.SelectedItem.Value;


            sorgula2.Parameters.AddWithValue("@ders", GridView1.SelectedRow.Cells[1].Text);
            sorgula2.Parameters.AddWithValue("@tarih", trh2 );
            sorgula2.Parameters.AddWithValue("@saat", st2);
            sorgula2.Parameters.AddWithValue("@teacher",id3 );
            sorgula2.Parameters.AddWithValue("@student", stdId);
            sorgula2.Parameters.AddWithValue("@derstipi", dersTipi2);
            baglan.Open();
            sorgula2.ExecuteNonQuery();

            baglan.Close();
            baglan.Dispose();
        }
    }
}