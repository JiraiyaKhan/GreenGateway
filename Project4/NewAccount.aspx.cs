using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;

namespace Project4
{
    public partial class NewAccount : System.Web.UI.Page
    {
        GreenSvc.GreenWebService pxy = new GreenSvc.GreenWebService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool dupe = pxy.DupeCard(Convert.ToInt64(txtCardNumber.Text));

            if (!dupe)
            {
                GreenSvc.Account gsvAccount = new GreenSvc.Account();

                gsvAccount.FirstName = txtFirstName.Text;
                gsvAccount.LastName = txtLastName.Text;
                gsvAccount.BillingAddress = txtBillingAddress.Text;
                gsvAccount.City = txtCity.Text;
                gsvAccount.State = txtState.Text;
                gsvAccount.ZipCode = int.Parse(txtZip.Text);

                GreenSvc.Card gsvCard = new GreenSvc.Card();

                gsvCard.Number = Convert.ToInt64(txtCardNumber.Text);
                gsvCard.Exp = Convert.ToDateTime(txtExp.Text);
                gsvCard.Cvv = int.Parse(txtCVV.Text);
                gsvCard.Limit = float.Parse(txtLimit.Text);
                gsvCard.Balance = float.Parse(txtBalance.Text);


                int success = pxy.CreateAccount(gsvAccount, gsvCard);

                if (success > 0)
                {
                    lblError.Text = "STATUS: ACCOUNT ADDED SUCCESSFULLY";
                }
                else
                {
                    lblError.Text = "STATUS: ACCOUNT NOT ADDED SUCCESSFULLY";
                }
            }
            else
            {
                lblError.Text = "STATUS: ACCOUNT ALREADY EXISTS";
            }
            

        }
    }
}