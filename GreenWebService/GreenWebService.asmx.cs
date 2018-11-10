using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

using System.Data;
using Utilities;
using GreenLibrary;
using System.Collections;
using System.Data.SqlClient;

namespace GreenWebService
{
    /// <summary>
    /// Summary description for GreenWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GreenWebService : System.Web.Services.WebService
    {
        DBConnect objDB = new DBConnect();
        SqlCommand objCommand = new SqlCommand();
        DataSet myDataSet;

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public bool DupeCard(long card)
        {
            objCommand.Parameters.Clear();
            bool result = false;

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_DupeCard";

            SqlParameter inputParameter = new SqlParameter("@theCardNumber", card);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            myDataSet = objDB.GetDataSetUsingCmdObj(objCommand);
            if (myDataSet.Tables[0].Rows.Count > 0)
            {
                result = true;
            }
            return result;
        }

        [WebMethod]
        public DataSet PullAccount(long card)
        {
            objCommand.Parameters.Clear();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_DupeCard";

            SqlParameter inputParameter = new SqlParameter("@theCardNumber", card);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            myDataSet = objDB.GetDataSetUsingCmdObj(objCommand);
            
            return myDataSet;
        }

        [WebMethod]
        public int CreateAccount(Account account, Card card)
        {
            objCommand.Parameters.Clear();
            int result = 0;

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_CreateAccount";

            SqlParameter inputParameter = new SqlParameter("@theFN", account.FirstName);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theLN", account.LastName);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theBillAdd", account.BillingAddress);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theCity", account.City);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theState", account.State);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theZip", account.ZipCode);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Int;
            inputParameter.Size = 4;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theCardNumber", card.Number);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theExp", card.Exp);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.DateTime;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theCVV", card.Cvv);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Int;
            inputParameter.Size = 4;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theLimit", card.Limit);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Float;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theBalance", card.Balance);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Float;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            result = objDB.DoUpdateUsingCmdObj(objCommand);

            return result;
        }

        [WebMethod]
        public int UpdateAccount(Account account, Card card)
        {
            objCommand.Parameters.Clear();
            int result = 0;

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_UpdateAccount";

            SqlParameter inputParameter = new SqlParameter("@theFN", account.FirstName);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theLN", account.LastName);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theBillAdd", account.BillingAddress);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theCity", account.City);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theState", account.State);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theZip", account.ZipCode);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Int;
            inputParameter.Size = 4;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theCardNumber", card.Number);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theExp", card.Exp);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.DateTime;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theCVV", card.Cvv);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Int;
            inputParameter.Size = 4;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theLimit", card.Limit);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Float;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theBalance", card.Balance);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Float;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            result = objDB.DoUpdateUsingCmdObj(objCommand);

            return result;
        }

        [WebMethod]
        public bool AuthenticateCard(long card, int cvv)
        {
            objCommand.Parameters.Clear();
            bool result = false;

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_AuthenticateCardCVV";

            SqlParameter inputParameter = new SqlParameter("@theCardNumber", card);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theCVV", cvv);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Int;
            inputParameter.Size = 4;

            objCommand.Parameters.Add(inputParameter);

            myDataSet = objDB.GetDataSetUsingCmdObj(objCommand);
            if (myDataSet.Tables[0].Rows.Count > 0)
            {
                result = true;
            }
            return result;
        }

        [WebMethod]
        public int CreateTransaction(Transaction transaction, Card card)
        {
            objCommand.Parameters.Clear();
            int result = 0;

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_CreateTransaction";

            SqlParameter inputParameter = new SqlParameter("@theCardNumber", card.Number);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theAmount", transaction.Amount);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Float;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theDate", transaction.Date);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.DateTime;

            objCommand.Parameters.Add(inputParameter);

            result = objDB.DoUpdateUsingCmdObj(objCommand);

            return result;
        }

        [WebMethod]
        public int CreatePayment(long card, float amount)
        {
            objCommand.Parameters.Clear();
            int result = 0;

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_Payment";

            SqlParameter inputParameter = new SqlParameter("@theCardNumber", card);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@theAmount", amount);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Float;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);            

            result = objDB.DoUpdateUsingCmdObj(objCommand);

            return result;
        }

        [WebMethod]
        public DataSet PullTransactions(long card)
        {
            objCommand.Parameters.Clear();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_PullTransactions";

            SqlParameter inputParameter = new SqlParameter("@theCardNumber", card);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);

            myDataSet = objDB.GetDataSetUsingCmdObj(objCommand);

            return myDataSet;
        }

        [WebMethod]
        public int DeleteAccount(long card)
        {
            objCommand.Parameters.Clear();
            int result = 0;

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "P4_DeleteAccount";

            SqlParameter inputParameter = new SqlParameter("@theCardNumber", card);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.BigInt;
            inputParameter.Size = 8;

            objCommand.Parameters.Add(inputParameter);
            
            result = objDB.DoUpdateUsingCmdObj(objCommand);

            return result;
        }
    }
}
