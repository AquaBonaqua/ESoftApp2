using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using ESoft2App.Class;

namespace ESoft2App.Windows
{
    /// <summary>
    /// Логика взаимодействия для WindowAddHouse.xaml
    /// </summary>
    public partial class WindowAddHouse : Window
    {
        public WindowAddHouse()
        {
            InitializeComponent();
            CmbComplex.ItemsSource = AppData.Ent.Complex.ToList();
            CmbComplex.SelectedValuePath = "Id";
            CmbComplex.DisplayMemberPath = "Name";
        }

       

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            House house = new House()
            {
                Street = Street.Text,
                Number = Number.Text,
                ComplexId = (int)CmbComplex.SelectedValue,
                PlusCost = Convert.ToDecimal(PlusCost.Text),
                BuildingCost = Convert.ToDecimal(BuildingCost.Text),
         

            };

            AppData.Ent.House.Add(house);
            AppData.Ent.SaveChanges();
            AppData.Frame.Refresh();

            MessageBox.Show("Добавлено");
            this.Close();
        }

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
