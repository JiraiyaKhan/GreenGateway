using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project4
{
    public partial class Payment : System.Web.UI.Page
    {
        GreenSvc.GreenWebService pxy = new GreenSvc.GreenWebService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (pxy.AuthenticateCard(Convert.ToInt64(txtCardNumber.Text), Convert.ToInt32(txtCVV.Text)))
            {
                int success = pxy.CreatePayment(Convert.ToInt64(txtCardNumber.Text), float.Parse(txtPayment.Text));

                if (success > 0)
                {
                    lblError.Text = "STATUS: PAYMENT CREATED SUCCESSFULLY";
                }
                else
                {
                    lblError.Text = "STATUS: PAYMENT NOT CREATED SUCCESSFULLY";
                }
            }
            else
            {
                lblError.Text = "Status: AUTHENTICATION ERROR --REENTER CORRECT CARD NUMBER AND CVV";
            }
        }
    }
}