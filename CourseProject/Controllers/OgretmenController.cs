using CourseProject.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Configuration;
using System.Web.Http;

namespace CourseProject.Controllers
{
    [RoutePrefix("api/Ogretmen")]
    public class OgretmenController : ApiController
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        Teacher t1 = new Teacher();

        // GET: api/Teacher
        [Route("")]
        public List<Teacher> Get()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM teacher", baglan);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            List<Teacher> lst = new List<Teacher>();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Teacher tea = new Teacher();
                    tea.name = dt.Rows[i]["name"].ToString();
                    tea.surname = dt.Rows[i]["surname"].ToString();
                    tea.branch = dt.Rows[i]["branch"].ToString();
                    tea.city = dt.Rows[i]["city"].ToString();
                    tea.age = Convert.ToInt32(dt.Rows[i]["age"]);
                    lst.Add(tea);
                }
            }
            if (lst.Count > 0)
            {
                return lst;
            }
            else
            {
                return null;
            }
        }

        // GET: api/Teacher/5

        [Route("Get/{ders}")]
        public Teacher Get(string ders)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM teacher WHERE branch=@branch", baglan);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.SelectCommand.Parameters.AddWithValue("@branch", ders);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Teacher t2 = new Teacher();
            if (dt.Rows.Count > 0)
            {
                
                   
                    t2.name = dt.Rows[0]["name"].ToString();
                    t2.surname = dt.Rows[0]["surname"].ToString();
                    t2.branch = dt.Rows[0]["branch"].ToString();
                    t2.city = dt.Rows[0]["city"].ToString();
                    t2.age = Convert.ToInt32(dt.Rows[0]["age"]);
                    
                
                
            }
            if(t2!=null)
            {
                return t2;
            }
            else
            {
                return null;
            }
        }

        // POST: api/Teacher
        public void Post(Teacher t1)
        {
        }

        // PUT: api/Teacher/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/Teacher/5
        public void Delete(int id)
        {
        }
    }
}