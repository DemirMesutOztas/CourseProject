using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseProject
{
    public partial class course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ders.Text = GridView1.SelectedRow.Cells[2].Text;
            egitmenadSoyad.Text = GridView1.SelectedRow.Cells[3].Text + "+" + GridView1.SelectedRow.Cells[4].Text;
            DropDownList1.Items.Add("Online");
            DropDownList1.Items.Add("Yüzyüze");
            //tarihzaman.Text = GridView1.SelectedRow.Cells[2].Text;


        }
    }
}