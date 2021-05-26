using System;
using System.Collections.Generic;
using System.Linq;
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

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            ShowMessage("Data saved successfully, but unable to send an Email.", 2);
        }

        public void ShowMessage(string strMessage, int iMsgNo)
        {
            strMessage = strMessage.Replace("'", "");
            strMessage = strMessage.Replace("\r\n", "");
            RegisterStartupScript("Msg" + iMsgNo, "<script>alert('" + strMessage + "')</script>");
        }
    }
}