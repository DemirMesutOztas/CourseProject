using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CourseProject.Model
{
    public class Rezervasyon
    {
       
        public string lessonname
        { get; set; }
        public string name
        { get; set; }
        public string surname
        { get; set; }
        public string lessontype
        { get; set; }
        public int total
        { get; set; }
    }
}