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
    [RoutePrefix("api/Rezervasyon")]
    public class RezervasyonController : ApiController
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        Rezervasyon t1 = new Rezervasyon();

        // GET: api/Teacher
        [Route("")]
        public List<Rezervasyon> Get()
        {
            SqlCommand cmd = new SqlCommand("SELECT reservation.[lessonname] as DersAdı, count(reservationId) as Toplam, " +
                "teacher.name as Ad, teacher.surname as Soyad, teacher.[teacherId], reservation.[lessontype] as DersTipi " +
                "FROM[reservation] JOIN[teacher] ON reservation.teacherId = teacher.teacherId group by reservation.[lessonname], " +
                "teacher.name, teacher.surname, teacher.[teacherId],  reservation.[lessonname], reservation.[lessontype] ORDER BY Toplam desc", baglan);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            List<Rezervasyon> lst = new List<Rezervasyon>();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Rezervasyon r1 = new Rezervasyon();
                    r1.name = dt.Rows[i]["Ad"].ToString();
                    r1.surname = dt.Rows[i]["Soyad"].ToString();
                    r1.lessonname = dt.Rows[i]["DersAdı"].ToString();
                    r1.lessontype = dt.Rows[i]["DersTipi"].ToString();
                    //r1.reservationId = Convert.ToInt32(dt.Rows[i]["reservationId"]);
                    //r1.teacherId = Convert.ToInt32(dt.Rows[i]["teacherId"]);
                    r1.total = Convert.ToInt32(dt.Rows[i]["Toplam"]);
                    lst.Add(r1);
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

    }
}
