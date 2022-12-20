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
            baglan.Open();


            string sessionId = Session["studentId"].ToString();
            int stdId = int.Parse(sessionId);
            SqlCommand sorgula3 = new SqlCommand("select name from student where studentId= @ogrenci", baglan);
            sorgula3.Connection = baglan;

            sorgula3.Parameters.AddWithValue("@ogrenci", stdId);
           
            sorgula3.ExecuteNonQuery();


            baglan.Close();
            baglan.Dispose();

        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {






        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);


            //if ((GridView1.SelectedRow == null) || (tarih.Text == "Seçiniz") || (saatDrop.SelectedValue == null))
            //{
            //    Response.Write("<script>alert('login successful');</script>");
            //}
            //else
            //{
            SqlCommand sorgula2 = new SqlCommand("INSERT INTO reservation (teacherId,studentId, date_choose, hour, lessonname, lessontype) VALUES ( @teacher, @student, @tarih, @saat, @ders, @derstipi)", baglan);
            sorgula2.Connection = baglan;
            string secilenTarih2 = tarih.Text;
            sorgula2.Parameters.AddWithValue("@trh", secilenTarih2);

            string sa = saatDrop.SelectedValue;

            //var st = GridView1.SelectedRow.FindControl("saat") as DropDownList;
            //string st2 = st.Text;

            var id = GridView1.SelectedRow.FindControl("trid") as Label;

            string id2 = id.Text;

            int id3 = int.Parse(id2);

            string sessionId = Session["studentId"].ToString();
            int stdId = int.Parse(sessionId);

            string derstip = dersTipi.SelectedValue;

            //var derstipi = GridView1.SelectedRow.FindControl("dersTipi") as DropDownList;
            //string dersTipi2 = derstipi.SelectedItem.Value;
            // Label2.Text = GridView1.SelectedRow.Cells[2].Text;


            sorgula2.Parameters.AddWithValue("@ders", GridView1.SelectedRow.Cells[2].Text);
            sorgula2.Parameters.AddWithValue("@tarih", secilenTarih2);
            sorgula2.Parameters.AddWithValue("@saat", sa);
            sorgula2.Parameters.AddWithValue("@teacher", id3);
            sorgula2.Parameters.AddWithValue("@student", stdId);
            sorgula2.Parameters.AddWithValue("@derstipi", derstip);
            baglan.Open();
            sorgula2.ExecuteNonQuery();

            baglan.Close();

            string message = "Rezervasyonunuz başarılı bir şekilde oluşturuldu!";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
            "setTimeout(function() { window.location.replace('course.aspx') }, 2000);", true);

            saatDrop.ClearSelection();
            dersTipi.ClearSelection();


            //Response.Redirect("course.aspx");
            




        }

        protected void tarih_TextChanged(object sender, EventArgs e)
        {
            //SqlConnection baglan2 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
            //if(GridView1.SelectedDataKey.Value == null)
            //{
            //    Response.Write("<script>alert('login successful');</script>");
            //}
            //else
            //{
            SqlConnection baglan2 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

            SqlCommand sorgu = new SqlCommand("select saat from hour where saat not in (select hour from reservation where teacherId=@ogr and date_choose=@trh)", baglan2);

            sorgu.Connection = baglan2;
            string secilenTarih = tarih.Text;
            sorgu.Parameters.AddWithValue("@trh", secilenTarih);

            var id = GridView1.SelectedRow.FindControl("trid") as Label;
            string id2 = id.Text;
            int id3 = int.Parse(id2);
            sorgu.Parameters.AddWithValue("@ogr", id3);


            saatDrop.Items.Clear();
            baglan2.Open();
            SqlDataReader dr = sorgu.ExecuteReader();

            while (dr.Read())
            {
                string x = dr["saat"].ToString();

                saatDrop.Items.Add(x);
                // Label2.Text = dr["saat"].ToString();
            }

            baglan2.Close();
            //}



        }

        protected void saatDrop_Load(object sender, EventArgs e)
        {

        }
    }
}