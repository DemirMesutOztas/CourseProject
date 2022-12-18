using CourseProject.Model;
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
    public class OgretmenController : ApiController
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        Teacher t1 = new Teacher();

        // GET: api/Teacher
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
        public string Get(int id)
        {
            return "value";
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