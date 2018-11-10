using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GreenLibrary
{
    [Serializable]
    public class Transaction
    {
        private int id;
        private float amount;
        private DateTime date;

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

        public float Amount
        {
            get
            {
                return amount;
            }

            set
            {
                amount = value;
            }
        }

        public DateTime Date
        {
            get
            {
                return date;
            }

            set
            {
                date = value;
            }
        }

        public Transaction()
        {

        }
        public Transaction(int id, float amount, DateTime Date)
        {
            this.Id = id;
            this.Amount = amount;
            this.Date = Date;
        }

        public Transaction( float amount, DateTime Date)
        {
            this.Amount = amount;
            this.Date = Date;
        }
    }
}
