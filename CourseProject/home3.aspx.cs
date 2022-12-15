using Newtonsoft.Json;
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
using System.Windows;

namespace CourseProject
{
    public partial class home3 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
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



        protected void Button1_Click1(object sender, EventArgs e)
        {
            //HttpClient client = new HttpClient();
            //client.BaseAddress = new Uri("http://localhost:44390/");

            //HttpResponseMessage response = await client.GetAsync("api/Teacher");
            //if (response.IsSuccessStatusCode)
            //{

            //    Label1.Text = await response.Content.ReadAsStringAsync();

            //}
            //else
            //{

            //    Label1.Text = "gelmedi";



            //}





        }
    }
}