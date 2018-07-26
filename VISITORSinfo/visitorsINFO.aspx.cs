using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VISITORSinfo
{
    public partial class visitorsINFO : System.Web.UI.Page
    {
        MINIprojectEntities1 db = new MINIprojectEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

       
        protected void btnsave_Click(object sender, EventArgs e)
        {
            Response.Write("DAT INSERTED");
            string Fname = txtfname.Text;
            string Lnmae = txtlname.Text;
            string company = txtcomp.Text;
            string visiting = txtvisit.Text;
            string typeID = ddlid.SelectedItem.Value.ToString();
            string idNum = txtpan.Text.ToString();
            string vehicleNum = txtvehicle.Text.ToString();
            string contactNum = txtcont.Text.ToString();
            string visitpurp = txtpurp.Text.ToString();
            string status = "Signedin";
            DateTime checkedin = DateTime.Now;

            visitorinfo rs = new visitorinfo();
            rs.Checked_In = checkedin;
            rs.Checked_Out = checkedin;
            rs.FirstName = Fname;
            rs.LastName = Lnmae;
            rs.Company = company;
            rs.Visiting = visiting;
            rs.Type_of_ID = typeID;
            rs.ID_Num = idNum;
            rs.Vehicle_No = vehicleNum;
            rs.Contact_No = contactNum;
            rs.purpose_of_visiting = visiting;
            rs.Status = status;
            db.visitorinfoes.Add(rs);

            var res = db.SaveChanges();
            if (res > 0)
            {
                Response.Write(rs.Id);
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePAGE.aspx");
        }
    }

    }

