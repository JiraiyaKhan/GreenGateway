using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Project4
{
    public partial class CreateTransaction : System.Web.UI.Page
    {
        GreenSvc.GreenWebService pxy = new GreenSvc.GreenWebService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if(pxy.AuthenticateCard(Convert.ToInt64(txtCardNumber.Text), Convert.ToInt32(txtCVV.Text)))
            {
                GreenSvc.Transaction gsvTransaction = new GreenSvc.Transaction();

                gsvTransaction.Amount = float.Parse(txtAmount.Text);
                gsvTransaction.Date = Convert.ToDateTime(txtDate.Text);

                GreenSvc.Card gsvCard = new GreenSvc.Card();

                gsvCard.Number = Convert.ToInt64(txtCardNumber.Text);

                int success = pxy.CreateTransaction(gsvTransaction, gsvCard);

                if (success > 0)
                {
                    lblError.Text = "STATUS: TRANSACTION CREATED SUCCESSFULLY";
                }
                else
                {
                    lblError.Text = "STATUS: TRANSACTION NOT CREATED SUCCESSFULLY";
                }
            }
            else
            {
                lblError.Text = "Status: AUTHENTICATION ERROR --REENTER CORRECT CARD NUMBER AND CVV";
            }
        }
    }
}