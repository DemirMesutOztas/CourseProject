using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseProject
{
    public partial class teacherControl : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();

            string ogretmenId = Session["teacherId"].ToString();
            int ogrId = int.Parse(ogretmenId);

            SqlCommand sorgula2 = new SqlCommand("SELECT * FROM teacher WHERE teacherId=@ogretmen", baglan);
            sorgula2.Connection = baglan;

            sorgula2.Parameters.AddWithValue("@ogretmen", ogrId);
            
           
            SqlDataReader oku = sorgula2.ExecuteReader();

            oku.Read();
            
                icon.Text = oku["name"].ToString() + " " + oku["surname"].ToString();

            
            oku.Close();
            baglan.Close();

            SqlDataSource1.SelectParameters["teacherId"].DefaultValue = ogretmenId;
            



        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("home3.aspx");
        }
    }
}