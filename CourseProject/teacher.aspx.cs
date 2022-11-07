using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseProject
{
    public partial class teacher : System.Web.UI.Page
    {
        SqlConnection baglanti2 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void teacher_kaydet_Click1(object sender, EventArgs e)
        {
            baglanti2.Open();
            SqlCommand gonder2 = new SqlCommand();
            gonder2.Connection = baglanti2;
            
           string strname = imgUpload.FileName.ToString();
            //imgUpload.SaveAs(Server.MapPath("~/" + image + "/" + trImage.Filename);
            //trImage.ImageUrl = "~/DemirMesutOztas//CourseProject/image/" + Path.GetFileName(imgUpload.FileName);


            gonder2.CommandText = "INSERT INTO trainer (name, surname, email,phone, age, city, education, branch, password, password_again, photo, information) VALUES('" + tr_txt_adi.Text + "','" + tr_txt_surname.Text + "','" + tr_txt_email.Text + "','" +
                                 tr_txt_phone.Text + "','" + tr_txt_age.Text + "','" + tr_txt_city.Text + "','" + tr_txt_education.Text + "','" + tr_txt_branch.Text + "','" + tr_txt_password.Text + "','" +
                                 tr_txt_password2.Text + "','" + imgUpload + "','" + tr_txt_information.Text + "')";

          //  gonder2.CommandText = "SELECT * FROM trainer WHERE ID=1";
            gonder2.ExecuteNonQuery();
            
            baglanti2.Dispose();
            baglanti2.Close();
        }
    }
}