using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Http;
using System.Web.Mvc;


namespace CourseProject.Controllers
{
    
    public class TeacherController : ApiController
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        
        [System.Web.Http.HttpGet]
        public string Get()
        {
            SqlCommand sorgula = new SqlCommand("select name, surname, age, branch from teacher", baglan);
            SqlDataAdapter data = new SqlDataAdapter(sorgula);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();
            return JsonConvert.SerializeObject(dt);
        }

        [System.Web.Http.HttpGet]
        public string GetTop()
        {
            SqlCommand sorgula2 = new SqlCommand("SELECT TOP 3 teacher.name, COUNT(reservation.teacherId) as TercihEdilmeSayisi FROM [reservation] JOIN teacher ON reservation.teacherId = teacher.teacherId GROUP BY teacher.name ORDER BY COUNT(reservation.teacherId)", baglan);

            SqlDataAdapter data2 = new SqlDataAdapter(sorgula2);
            DataTable dt2 = new DataTable();
            data2.Fill(dt2);
            baglan.Close();
            return JsonConvert.SerializeObject(dt2);
        }

    }
}