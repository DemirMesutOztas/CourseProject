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
    public partial class studentLogin : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void giris_Click(object sender, EventArgs e)
        {
            string kullanici = kullaniciAdi.Text;
            string sifre = kullaniciSifre.Text;
           
            SqlCommand sorgula = new SqlCommand("SELECT * FROM student WHERE email=@email AND password=@password", baglan);

            sorgula.Parameters.AddWithValue("@email", kullanici);
            sorgula.Parameters.AddWithValue("@password", sifre);
            baglan.Open();
            SqlDataReader oku = sorgula.ExecuteReader();

            if (oku.Read())
            {
                Session["studentId"] = oku["studentId"].ToString();
                lblBilgi.Text = oku["studentId"].ToString();
               
                string message = "Başarılı bir şekilde oturumunuzu açtınız!";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
                "setTimeout(function() { window.location.replace('course.aspx') }, 3000);", true);

                oku.Close();
                baglan.Close();
                baglan.Dispose();
            }
            else
                lblBilgi.Text = "Kullanıcı adınızı ya da şifrenizi hatalı girdiniz!";

            oku.Close();
            baglan.Close();
            baglan.Dispose();

        }
    }
}