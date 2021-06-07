using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace IRS.Forms
{
    public partial class InvestorRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool Validate()
        {
            string Emailpattern = @"^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$";

            System.Text.RegularExpressions.Match Emailmatch = Regex.Match(txtEmailAddress.Text, Emailpattern, RegexOptions.IgnoreCase);
            if (!Emailmatch.Success)
            {
                this.ShowMessage("Enter Valid Email Address", 2);
                return false;
            }
            //FirstName
            if (txtfirstName.Text == "")
            {
                this.ShowMessage("Enter First Name", 2);
                return false;
            }
            //LastName
            if (txtLastName.Text == "")
            {
                this.ShowMessage("Enter Last Name", 2);
                return false;
            }
            //CompanyName
            if (txtCompanyName.Text == "")
            {
                this.ShowMessage("Enter Company Name", 2);
                return false;
            }
            //Investor Type
            if (ddlInvestorType.SelectedIndex == 0)
            {
                this.ShowMessage("Select Investor Type", 2);
                return false;
            }
            //Address 1
            if (txtStreetAddress1.Text == "")
            {
                this.ShowMessage("Enter Address", 2);
                return false;
            }
            //City
            string Citypattern = @"^[A-Za-z-_*#&\?\/.=!~@%(){}]+$";
            System.Text.RegularExpressions.Match Citymatch = Regex.Match(txtCity.Text, Citypattern, RegexOptions.IgnoreCase);
            if (!Citymatch.Success)
            {
                this.ShowMessage("City/Town Name is not valid", 2);
                return false;
            }
            //Pin
            if (txtPin.Text != "")
            {
                string Pinpattern = @"^[0-9]+$";
                System.Text.RegularExpressions.Match Pinmatch = Regex.Match(txtPin.Text, Pinpattern, RegexOptions.IgnoreCase);
                if (!Pinmatch.Success)
                {
                    this.ShowMessage("Zip / Postal Code is not valid", 2);
                    return false;
                }
            }
            //Country
            if (ddlCountry.SelectedIndex == 0)
            {
                this.ShowMessage("Select Country", 2);
                return false;
            }
            //Telephone
            if (txtTelephone.Text != "")
            {
                string Telephonepattern = @"^[0-9-*+,;#\\/.(){}]+$";
                System.Text.RegularExpressions.Match Telephonematch = Regex.Match(txtTelephone.Text, Telephonepattern, RegexOptions.IgnoreCase);
                if (!Telephonematch.Success)
                {
                    this.ShowMessage("Telephone No. is not valid", 2);
                    return false;
                }
            }
            //Fax
            if (txtFax.Text != "")
            {
                string Faxpattern = @"^[0-9-*+,;#\\/.(){}]+$";
                System.Text.RegularExpressions.Match Faxmatch = Regex.Match(txtFax.Text, Faxpattern, RegexOptions.IgnoreCase);
                if (!Faxmatch.Success)
                {
                    this.ShowMessage("Fax No. is not valid", 2);
                    return false;
                }
            }
            return true;
        }

        public void ShowMessage(string strMessage, int iMsgNo)
        {
            strMessage = strMessage.Replace("'", "");
            strMessage = strMessage.Replace("\r\n", "");
            RegisterStartupScript("Msg" + iMsgNo, "<script>alert('" + strMessage + "')</script>");
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Validate())
            {
                this.ShowMessage("User Subscribe succefully.", 2);
            }
        }
    }
}