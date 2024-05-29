using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mstore25432.Tutorial.week3
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rvdob.MinimumValue = DateTime.Now.AddYears(-45).ToShortDateString();
            rvdob.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
            rvdob.Type = ValidationDataType.Date;



            if (!Page.IsPostBack)
            {
                txtFName.Focus();

                DataSet dcities = new DataSet();
                string physicalpath = Server.MapPath("~/app_data/cities.xml");
                dcities.ReadXml(physicalpath);

                ddlcity.DataSource = dcities;
                ddlcity.DataTextField = "cityName";
                ddlcity.DataValueField = "cityId";
                ddlcity.DataBind();

                ListItem lidefault = new ListItem("Choose City", "-1");
                ddlcity.Items.Insert(0, lidefault);

            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("~/login");

            }

        }

        protected void txtafavmovies_TextChanged(object sender, EventArgs e)
        {
            int count = txtafavmovies.Text.Length;
            notif.InnerHtml = count.ToString();

        }

        protected void chkagreement_CheckedChanged(object sender, EventArgs e)
        {
            if (chkagreement.Checked)
            {
                imgsmiley.ImageUrl = "~/images/smiley.jpg";
                imgsmiley.Width = 50;

            }
            else
            {
                imgsmiley.ImageUrl = " ";

            }
        }

        protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtStreet_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtmob_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlcity_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void cuspassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length <= 7 || args.Value.Length >= 12)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFName.Text = " ";
            txtLName.Text = " ";

        }
    }
}