//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ESoft2App
{
    using System;
    using System.Collections.Generic;
    
    public partial class Apartment
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public decimal Surface { get; set; }
        public int RoomsCount { get; set; }
        public int Entrance { get; set; }
        public int Floor { get; set; }
        public int SellStatusId { get; set; }
        public decimal PlusFinishCost { get; set; }
        public decimal BuildingCost { get; set; }
        public int HouseId { get; set; }
    
        public virtual House House { get; set; }
        public virtual SellStatus SellStatus { get; set; }
    }
}
