using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ESoft2App
{
    public partial class Apartment
    {
        public string Adress
        {
            get
            {
                string Adress = string.Concat(House.Street, ", д.", House.Number, ", кв.", Number);
                return Adress;
            }
        }
    }
}
