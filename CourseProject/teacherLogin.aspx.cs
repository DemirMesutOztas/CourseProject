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
    public partial class teacherLogin : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void giris_Click(object sender, EventArgs e)
        {
            string email = tremail.Text;
            string sifre = trpassword.Text;

            SqlCommand sorgula2 = new SqlCommand("SELECT * FROM teacher WHERE email=@email AND password=@password", baglan);

            sorgula2.Parameters.AddWithValue("@email", email);
            sorgula2.Parameters.AddWithValue("@password", sifre);
            baglan.Open();
            SqlDataReader oku = sorgula2.ExecuteReader();
            if (oku.Read())
            {
                Session["teacherId"] = oku["teacherId"].ToString();
                // trlblBilgi.Text = oku["studentId"].ToString();

                string message = "Başarılı bir şekilde oturumunuzu açtınız!";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
                "setTimeout(function() { window.location.replace('teacherControl.aspx') }, 3000);", true);
                oku.Close();
                baglan.Close();
                baglan.Dispose();

                //Response.Redirect("teacherControl.aspx");

            }
            else
                trlblBilgi.Text = "Kullanıcı adınızı ya da şifrenizi hatalı girdiniz!";
            oku.Close();
            baglan.Close();
            baglan.Dispose();
        }
    }
}