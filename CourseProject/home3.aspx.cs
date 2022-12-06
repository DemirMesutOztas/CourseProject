using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseProject
{
    public partial class home3 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);


        protected  void  Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void giris_Click(object sender, EventArgs e)
        {
            string kullanici = epostatx.Text;
            string sifre = sifretx.Text;

            SqlCommand sorgula = new SqlCommand("SELECT * FROM student WHERE email=@email AND password=@password", baglan);

            sorgula.Parameters.AddWithValue("@email", kullanici);
            sorgula.Parameters.AddWithValue("@password", sifre);
            baglan.Open();
            SqlDataReader oku = sorgula.ExecuteReader();
            if (oku.Read())
            {
                Session["studentId"] = oku["studentId"].ToString();
               // lblBilgi.Text = oku["studentId"].ToString();
               
                Response.Redirect("course.aspx");

            }
            else
                lblBilgi.Text = "Kullanıcı adınızı ya da şifrenizi hatalı girdiniz!";
            oku.Close();
            baglan.Close();
            baglan.Dispose();

        }

        protected async void Button1_Click(object sender, EventArgs e)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:44390/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = await client.GetAsync("api/Teacher/Get");
            if(response.IsSuccessStatusCode)
            {
                string myvalue = await response.Content.ReadAsStringAsync();
                client.Dispose();
                Label1.Text = myvalue;
            }
            
        
        }
    }
}