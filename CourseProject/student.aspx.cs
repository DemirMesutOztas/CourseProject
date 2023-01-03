using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
            SqlCommand sorgu3 = new SqlCommand("select studentId from student where email=@posta", baglanti);
            sorgu3.Parameters.AddWithValue("@posta", t_txt_email.Text);
            baglanti.Open();
            sorgu3.Connection = baglanti;
            SqlDataReader dr = sorgu3.ExecuteReader();

            string message = "";
            string script = "";
            if (dr.Read())
            {
                message = "Aynı e-posta adresine sahip kayıtlı kullanıcı bulunmaktadır!";
                script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                baglanti.Close();
                baglanti.Dispose();
                dr.Close();
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
                "setTimeout(function() { window.location.replace('home3.aspx') }, 2000);", true);

            }
            else
            {
                dr.Close();

                SqlCommand gonder = new SqlCommand("insert into student (name,surname,email, password, password_again ) values('" + t_txt_adi.Text + "','" + t_txt_surname.Text
                                                   + "','" + t_txt_email.Text + "','"
                                                   + t_txt_password.Text + "','" + t_txt_password2.Text + "')", baglanti);
                gonder.ExecuteNonQuery();
                baglanti.Dispose();
                baglanti.Close();

                message = "Başarılı bir şekilde kayıt oldunuz!";
                script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
                "setTimeout(function() { window.location.replace('home3.aspx') }, 2000);", true);


            }

        }
    }
}