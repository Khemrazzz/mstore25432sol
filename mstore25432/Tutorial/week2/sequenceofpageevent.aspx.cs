using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mstore25432.Tutorial.week2
{
    public partial class sequenceofpageevent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Page Load";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text += "<br />Button Click";
        }
    }
}