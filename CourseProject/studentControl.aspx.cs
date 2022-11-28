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
    public partial class studentControl : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            baglan.Open();

            string ogrenciNo = Session["studentId"].ToString();
            int ogrenci = int.Parse(ogrenciNo);

            SqlCommand sorgula2 = new SqlCommand("SELECT * FROM student WHERE studentId=@ogrenciId", baglan);
            sorgula2.Connection = baglan;

            sorgula2.Parameters.AddWithValue("@ogrenciId", ogrenci);


            SqlDataReader oku = sorgula2.ExecuteReader();

            oku.Read();

            icon.Text = oku["name"].ToString() + " " + oku["surname"].ToString();


            oku.Close();
            baglan.Close();

            SqlDataSource1.SelectParameters["studentId"].DefaultValue = ogrenciNo;
        }
    }
}