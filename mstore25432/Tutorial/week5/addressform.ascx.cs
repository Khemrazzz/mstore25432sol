using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mstore25432.Tutorial.week5
{
    public partial class addressform : System.Web.UI.UserControl
    {
        public string Street
        {
            get { return txtStreet.Text; }
            set { txtStreet.Text = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}