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
        //SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["veritabani"].ConnectionString);
        //SqlConnection baglanti2 = new SqlConnection("Data Source=dmo.database.windows.net; Initial Catalog=trainee;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {


            string connetionString;
            SqlConnection cnn;
            connetionString = ConfigurationManager.ConnectionStrings["veritabani"].ConnectionString;
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            Response.Write("Connection Made");
            cnn.Close();



        }

        protected void user_kaydet_Click(object sender, EventArgs e)
        {
            //baglanti2.Open();
            ////SqlCommand gonder = new SqlCommand("insert into trainee (name,surname,email,phone,age,education, password, password2 ) values('" + t_txt_adi.Text + "','" + t_txt_surname.Text + "','" + t_txt_email.Text + "','" + t_txt_phone.Text + "','" + t_txt_age.Text + "','" + t_txt_education.Text + "','" + t_txt_password.Text + "','" + t_txt_password2.Text +"')'", baglanti2);
            //gonder.ExecuteNonQuery();
            //baglanti2.Dispose();/*Nesneyi bellekten at*/
            //baglanti2.Close();

        }
    }
}