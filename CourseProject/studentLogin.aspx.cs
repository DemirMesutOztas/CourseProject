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
           
            SqlCommand sorgula = new SqlCommand("SELECT * FROM Kullanicilar WHERE KullaniciAdi=@KullaniciAdi AND Sifre=@Sifre", baglan);

            sorgula.Parameters.AddWithValue("@KullaniciAdi", kullanici);
            sorgula.Parameters.AddWithValue("@Sifre", sifre);
            baglan.Open();
            SqlDataReader oku = sorgula.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["KullaniciAdi"].ToString();
                Response.Redirect("Default.aspx");
            }
            else
                lblBilgi.Text = "Kullanıcı adınızı ya da şifrenizi hatalı girdiniz!";
            oku.Close();
            baglan.Close();
            baglan.Dispose();

        }
    }
}