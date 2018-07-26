using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VISITORSinfo
{
    public partial class visitorsOUT : System.Web.UI.Page
    {
        MINIprojectEntities1 db = new MINIprojectEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                var data = (from t in db.visitorinfoes

                            where t.Status == "signedin"
                            select new
                            {
                                id = t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.Type_of_ID,
                                ID_Num = t.ID_Num
                            }).ToList();


                GridView2.DataSource = data;
                GridView2.DataBind();
            }
        }



        protected void b2_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            int id = int.Parse(r.Cells[1].Text);
            var olddata = (from t in db.visitorinfoes where t.Id==id && t.Status=="signedin" select t).SingleOrDefault();
            olddata.Status = "signedout";
           // olddata.ID_Num = idnum;
            olddata.Checked_Out = DateTime.Now;
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Status Updated");
            GridView2.DataBind();
        }



        protected void btnname_Click(object sender, EventArgs e)
        {



            if (!string.IsNullOrEmpty(txtvisitors.Text))

            {
                string name = txtvisitors.Text;
                var data = (from t in db.visitorinfoes

                            where t.FirstName == name && t.Status == "signedin"
                            select new
                            {
                                id = t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.Type_of_ID,
                                ID_Num = t.ID_Num
                            }).ToList();


                GridView2.DataSource = data;
                GridView2.DataBind();

            }
            else
            {
                var data = (from t in db.visitorinfoes

                            where t.Status == "signedin"
                            select new
                            {
                                id = t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.Type_of_ID,
                                ID_Num = t.ID_Num
                            }).ToList();


                GridView2.DataSource = data;
                GridView2.DataBind();
            }


        }

        protected void btnid_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtvisitors.Text))

            {
                int id = int.Parse(txtvisitors.Text);
                var data = (from t in db.visitorinfoes

                            where t.Id==id && t.Status=="signedin"
                            select new
                            {
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.Type_of_ID,
                                ID_Num = t.ID_Num
                            }).ToList();


                GridView2.DataSource = data;
                GridView2.DataBind();

            }
            else
            {
                var data = (from t in db.visitorinfoes

                            where  t.Status == "signedin"
                            select new
                            {
                                id = t.Id,
                                firstname = t.FirstName,
                                lastname = t.LastName,
                                Type_of_ID = t.Type_of_ID,
                                ID_Num = t.ID_Num
                            }).ToList();


                GridView2.DataSource = data;
                GridView2.DataBind();

            }
        }

       

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
