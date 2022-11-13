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
        SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);



        protected void Page_Load(object sender, EventArgs e)
        {




        }

        protected void user_kaydet_Click(object sender, EventArgs e)
        {
           
            baglanti.Open();
            SqlCommand gonder = new SqlCommand("insert into student (name,surname,email, password, password_again ) values('" + t_txt_adi.Text + "','" + t_txt_surname.Text 
                                               + "','" + t_txt_email.Text + "','" 
                                               + t_txt_password.Text + "','" + t_txt_password2.Text +"')", baglanti);
            gonder.ExecuteNonQuery();
            baglanti.Dispose();
            baglanti.Close();

        }
    }
}