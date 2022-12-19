using CourseProject.Model;
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
            //IEnumerable<Teacher> ogr = null;
            //HttpClient hc = new HttpClient();
            //hc.BaseAddress = new Uri("https://localhost:44390/api/");

            //var consumeApi = hc.GetAsync("Ogretmen");
            //consumeApi.Wait();

            //var readData = consumeApi.Result;
            //if(readData.IsSuccessStatusCode)
            //{
            //    var displayRecords = readData.Content.ReadAsAsync<IList<Teacher>>();
            //    displayRecords.Wait();
            //    ogr = displayRecords.Result;
            //    GridView1.DataSource = ogr;
            //    GridView1.DataBind();

            //}

            IEnumerable<Rezervasyon> rez = null;
            HttpClient hc = new HttpClient();
            hc.BaseAddress = new Uri("https://localhost:44390/api/");

            var consumeApi = hc.GetAsync("Rezervasyon");
            consumeApi.Wait();

            var readData = consumeApi.Result;
            if (readData.IsSuccessStatusCode)
            {
                var displayRecords = readData.Content.ReadAsAsync<IList<Rezervasyon>>();
                displayRecords.Wait();
                rez = displayRecords.Result;
                GridView1.DataSource = rez;

                GridView1.DataBind();

            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {         
            
                if (e.Row.RowType == DataControlRowType.Header)
                {
                    e.Row.Cells[0].Text = "Ders Adı";
                    e.Row.Cells[1].Text = "Öğretmen Adı";
                    e.Row.Cells[2].Text = "Öğretmen Soyadı";
                    e.Row.Cells[3].Text = "Ders Tipi";
                    e.Row.Cells[4].Text = "Toplam";
                }
            
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            IEnumerable<Teacher> tr = null;
            HttpClient hc = new HttpClient();
            hc.BaseAddress = new Uri("https://localhost:44390/api/");

            var consumeApi = hc.GetAsync("Teacher");
            consumeApi.Wait();

            var readData = consumeApi.Result;
            if (readData.IsSuccessStatusCode)
            {
                var displayRecords = readData.Content.ReadAsAsync<IList<Teacher>>();
                displayRecords.Wait();
                tr = displayRecords.Result;
                GridView2.DataSource = tr;

                GridView2.DataBind();

            }
        }
    }
}