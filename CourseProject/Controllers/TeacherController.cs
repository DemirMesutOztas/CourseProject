using CourseProject.Model;
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

        

        //SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

      
        
        //    Teacher[] t1 = new Teacher[]
        //    {
        //    new Teacher { teacherId = 1, name = "Tomato Soup", surname = "Groceries", branch = "kimya" },
        //    new Teacher { teacherId = 2, name = "Yo-yo", surname = "Toys", branch = "fizik" },
        //    new Teacher { teacherId = 3, name = "Hammer", surname = "Hardware", branch = "matematik" }
        //    };

        //    public IEnumerable<Teacher> GetAllProducts()
        //    {
        //        return t1;
        //    }

        //    public string GetProduct(string  value)
        //    {
        //                 SqlCommand sorgula = new SqlCommand("select name, surname, branch from teacher", baglan);
        //                baglan.Open();
        //                SqlDataAdapter data = new SqlDataAdapter(sorgula);
        //                DataTable dt = new DataTable();
        //                data.Fill(dt);
        //                baglan.Close();
                      
        //                return JsonConvert.SerializeObject(dt);



        //    }
             


        }


        //    [System.Web.Http.HttpGet]
        //    public string Get()
        //    {
        //        SqlCommand sorgula = new SqlCommand("select name, surname, age, branch from teacher where teacherId=3", baglan);
        //        baglan.Open();
        //        //SqlDataAdapter data = new SqlDataAdapter(sorgula);
        //        //DataTable dt = new DataTable();
        //        //data.Fill(dt);
        //        //baglan.Close();
        //        //return dt;
        //        //return JsonConvert.SerializeObject(dt);
        //        SqlDataReader oku = sorgula.ExecuteReader();
        //        oku.Read();
        //        string value = oku["name"].ToString();
        //        baglan.Close();
        //        return value;
        //    }

        //    //[System.Web.Http.HttpGet]
        //    //public string GetTop()
        //    //{
        //    //    SqlCommand sorgula2 = new SqlCommand("SELECT TOP 3 teacher.name, COUNT(reservation.teacherId) as TercihEdilmeSayisi FROM [reservation] JOIN teacher ON reservation.teacherId = teacher.teacherId GROUP BY teacher.name ORDER BY COUNT(reservation.teacherId)", baglan);

        //    //    SqlDataAdapter data2 = new SqlDataAdapter(sorgula2);
        //    //    DataTable dt2 = new DataTable();
        //    //    data2.Fill(dt2);
        //    //    baglan.Close();
        //    //    return JsonConvert.SerializeObject(dt2);
        //    //}

        //}
    }