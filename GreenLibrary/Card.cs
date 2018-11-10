using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GreenLibrary
{
    [Serializable]
    public class Card
    {
        private int id;
        private long number;
        private DateTime exp;
        private int cvv;
        private float limit;
        private float balance;

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public long Number
        {
            get
            {
                return number;
            }

            set
            {
                number = value;
            }
        }

        public DateTime Exp
        {
            get
            {
                return exp;
            }

            set
            {
                exp = value;
            }
        }

        public int Cvv
        {
            get
            {
                return cvv;
            }

            set
            {
                cvv = value;
            }
        }

        public float Limit
        {
            get
            {
                return limit;
            }

            set
            {
                limit = value;
            }
        }

        public float Balance
        {
            get
            {
                return balance;
            }

            set
            {
                balance = value;
            }
        }

        public Card()
        {

        }
        public Card(int id, long number, DateTime exp, int cvv, float limit, float balance)
        {
            this.Id = id;
            this.Number = number;
            this.Exp = exp;
            this.Cvv = cvv;
            this.Limit = limit;
            this.Balance = balance;
        }

        public Card(long number, DateTime exp, int cvv, float limit, float balance)
        {
            this.Number = number;
            this.Exp = exp;
            this.Cvv = cvv;
            this.Limit = limit;
            this.Balance = balance;
        }

    }
}
