using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ESoft2App
{
    public partial class House
    {
        public int SoldApartments
        {
            get
            {
                int SoldApartments = Apartment.Count(x => x.SellStatusId == 2);
                return SoldApartments;
            }
        }

        public int ReadyApartments
        {
            get
            {
                int ReadyApartments = Apartment.Count(x => x.SellStatusId == 1);
                return ReadyApartments;
            }
        }
    }
}
