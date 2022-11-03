using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseProject
{
    public partial class trainee : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["veritabani"].ConnectionString);
       


        protected void Page_Load(object sender, EventArgs e)
        {




        }

        protected void user_kaydet_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source= .; Initial Catalog=dbo.table;Integrated Security=True");
            baglanti.Open();
            // SqlCommand gonder = new SqlCommand("insert into trainee (name,surname,email,phone,age,education, password, password2 ) values('" + t_txt_adi.Text + "','" + t_txt_surname.Text + "','" + t_txt_email.Text + "','" + t_txt_phone.Text + "','" + t_txt_age.Text + "','" + t_txt_education.Text + "','" + t_txt_password.Text + "','" + t_txt_password2.Text +"')'", baglanti);
             SqlCommand gonder = new SqlCommand("insert into dbo.dmo (adi,soyadi) values('" + t_txt_adi.Text + "','" + t_txt_surname.Text  +"')'", baglanti);
            gonder.ExecuteNonQuery();
            baglanti.Dispose();/*Nesneyi bellekten at*/
            baglanti.Close();

        }
    }
}