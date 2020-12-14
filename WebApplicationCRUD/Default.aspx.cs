using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationCRUD.ServiceReference1;

namespace WebApplicationCRUD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client(); //memanggil services refrences

        protected void Button1_Click(object sender, EventArgs e) //insert
        {
            InsertUser u = new InsertUser();
            u.Name = TextBox1.Text;
            u.Email = TextBox2.Text;
            string r = client.Insert(u);
            lblmsg.Text = r.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e) //search/display
        {
            ServiceReference1.gettestdata g = new ServiceReference1.gettestdata();
             g = client.GetInfo();
            DataTable dt = new DataTable();
            dt = g.usertab;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e) //update
        {
            UpdateUser u = new UpdateUser();
            u.UID = int.Parse(txtuid.Text);
            u.Name = TextBox1.Text;
            u.Email = TextBox2.Text;
            string result = client.Update(u);
            lblmsg.Text = result.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e) //Delete
        {
            DeleteUser d = new DeleteUser();
            d.UID = int.Parse(txtuid.Text);
            string res = client.Delete(d);
            lblmsg.Text = res.ToString();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}