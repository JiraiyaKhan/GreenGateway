using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Utilities;
using GreenLibrary;
using System.Collections;
using System.Data.SqlClient;

namespace Project4
{
    public partial class EditAccount : System.Web.UI.Page
    {
        GreenSvc.GreenWebService pxy = new GreenSvc.GreenWebService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lblError.Text = "Status";
            bool dupe = pxy.DupeCard(Convert.ToInt64(txtSearch.Text));

            if (dupe)
            {
                DataSet myDataSet = pxy.PullAccount(Convert.ToInt64(txtSearch.Text));

                DataRow dataRow = myDataSet.Tables[0].Rows[0];

                txtFirstName.Text = dataRow["FirstName"].ToString();
                txtLastName.Text = dataRow["LastName"].ToString();
                txtBillingAddress.Text = dataRow["BillingAddress"].ToString();
                txtCity.Text = dataRow["City"].ToString();
                txtState.Text = dataRow["State"].ToString();
                txtZip.Text = dataRow["ZipCode"].ToString();
                txtCardNumber.Text = dataRow["CardNumber"].ToString();
                txtExp.Text = Convert.ToDateTime(dataRow["Exp"].ToString()).ToShortDateString();
                txtCVV.Text = dataRow["CVV"].ToString();
                txtLimit.Text = dataRow["Limit"].ToString();
                txtBalance.Text = dataRow["Balance"].ToString();
            }
            else
            {
                lblError.Text = "Status: THE ACCOUNT DOES NOT EXIST";
            }
            
        }

        protected void btnEdit_Click(object sender, EventArgs e)
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


            int success = pxy.UpdateAccount(gsvAccount, gsvCard);

            if (success > 0)
            {
                lblError.Text = "STATUS: ACCOUNT UPDATED SUCCESSFULLY";
            }
            else
            {
                lblError.Text = "STATUS: ACCOUNT NOT UPDATED SUCCESSFULLY";
            }
        }
    }
}