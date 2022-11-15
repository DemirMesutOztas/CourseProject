﻿using System;
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
                Session["teacherId"] = oku["email"].ToString();
                // trlblBilgi.Text = oku["studentId"].ToString();
                Response.Redirect("course.aspx");

            }
            else
                trlblBilgi.Text = "Kullanıcı adınızı ya da şifrenizi hatalı girdiniz!";
            oku.Close();
            baglan.Close();
            baglan.Dispose();
        }
    }
}