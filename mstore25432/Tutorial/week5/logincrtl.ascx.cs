﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mstore25432.Tutorial.week5
{
    public partial class logincrtl : System.Web.UI.UserControl
    {
        public string Username
        {
            get { return txtUsername.Text; }
            set { txtUsername.Text = value; }
        }
        public string Password
        {
            get { return txtPassword.Text; }
            set { txtPassword.Attributes["value"] = value; }
        }
        public bool Chk
        {
            get { return chkremem.Checked; }
            set { chkremem.Checked = value; }
        }
        public string ValidationGroup
        {
            set
            {
                RequiredFieldValidator1.ValidationGroup = value;
                RequiredFieldValidator2.ValidationGroup = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}