using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ESoft2App
{
    public partial class Complex
    {    
        public int HousesCount
        {
            get
            {
                int HousesCount = House.Count(x => x.ComplexId == Id);
                return HousesCount;
            }
        }


    }

}
