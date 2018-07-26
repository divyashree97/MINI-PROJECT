using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VISITORSinfo
{
    public partial class homePAGE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

      
       

        protected void btnvisitorsin_Click(object sender, EventArgs e)
        {
            Response.Redirect("visitorsINFO.aspx");
        }
        protected void btnvisitorsout_Click(object sender, EventArgs e)
        {
            Response.Redirect("visitorsOUT.aspx");
        }
    }
}