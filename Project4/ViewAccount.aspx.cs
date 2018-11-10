using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Project4
{
    public partial class ViewAccount : System.Web.UI.Page
    {
        GreenSvc.GreenWebService pxy = new GreenSvc.GreenWebService();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnTransactions_Click(object sender, EventArgs e)
        {
            bool dupe = pxy.DupeCard(Convert.ToInt64(txtSearch.Text));

            if (dupe)
            {
                DataSet myDataSet = pxy.PullTransactions(Convert.ToInt64(txtSearch.Text));

                gvTransactions.DataSource = myDataSet;
                gvTransactions.DataBind();
            }
            else
            {
                lblError.Text = "Status: THE ACCOUNT DOES NOT EXIST";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int success = pxy.DeleteAccount(Convert.ToInt64(txtSearch.Text));
            
            if (success > 0)
            {
                lblError.Text = "STATUS: ACCOUNT DELETED SUCCESSFULLY";
            }
            else
            {
                lblError.Text = "STATUS: ACCOUNT NOT DELETED SUCCESSFULLY";
            }
        }
    }
}