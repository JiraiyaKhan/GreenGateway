using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GreenLibrary
{
    [Serializable]
    public class Account
    {
        private int id;
        private string firstName;
        private string lastName;
        private string billingAddress;
        private string city;
        private string state;
        private int zipCode;

        public int ID { get { return id; } set { id = value; } }
        public string FirstName { get { return firstName; } set { firstName = value; } }
        public string LastName { get { return lastName; } set { lastName = value; } }
        public string BillingAddress { get { return billingAddress; } set { billingAddress = value; } }
        public string City { get { return city; } set { city = value; } }
        public string State { get { return state; } set { state = value; } }
        public int ZipCode { get { return zipCode; } set { zipCode = value; } }

        public Account()
        {

        }
        public Account(int id, string firstName, string lastName, string billingAddress, string city, string state, int zipCode)
        {
            ID = id;
            FirstName = firstName;
            LastName = lastName;
            BillingAddress = billingAddress;
            City = city;
            State = state;
            ZipCode = zipCode;
        }

        public Account(string firstName, string lastName, string billingAddress, string city, string state, int zipCode)
        {
            FirstName = firstName;
            LastName = lastName;
            BillingAddress = billingAddress;
            City = city;
            State = state;
            ZipCode = zipCode;
        }

    }
}
