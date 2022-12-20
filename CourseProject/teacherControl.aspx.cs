using System;
using System.Collections.Generic;
using System.Data;
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //Response.Redirect(Request.RawUrl);
            //baglan.Open();

            //string ogretmenId = Session["teacherId"].ToString();
            //int ogrId = int.Parse(ogretmenId);


            //SqlDataSource1.SelectParameters["teacherId"].DefaultValue = ogretmenId;


            //SqlCommand cmd = new SqlCommand();

            //string sql = "SELECT student.name, student.surname, [teacherId], [date_choose], [hour], [lessonname], [lessontype], reservationId FROM[reservation] JOIN[student] ON reservation.studentId = student.studentId";
            //if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
            //{
            //    SqlDataSource1.SelectParameters["teacherId"].DefaultValue = ogretmenId;
            //    SqlDataSource1.SelectParameters["ogrenci"].DefaultValue = txtSearch.Text;
            //}
            //cmd.CommandText = sql;
            //cmd.Connection = baglan;
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);

            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

            //baglan.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}