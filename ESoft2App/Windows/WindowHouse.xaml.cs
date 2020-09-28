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
    /// Логика взаимодействия для WindowHouse.xaml
    /// </summary>
    public partial class WindowHouse : Window
    {
        House EditHouse;

        public WindowHouse(House house)
        {
            InitializeComponent();
            EditHouse = house;
            CmbComplex.ItemsSource = AppData.Ent.Complex.ToList();
            CmbComplex.SelectedValuePath = "Id";
            CmbComplex.DisplayMemberPath = "Name";

            Street.Text = house.Street;
            Number.Text = house.Number;
            CmbComplex.SelectedValue = house.ComplexId;
            PlusCost.Text = house.PlusCost.ToString();
            BuildingCost.Text = house.BuildingCost.ToString();
 
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            EditHouse.Street = Street.Text;
            EditHouse.Number = Number.Text;
            EditHouse.ComplexId = (int)CmbComplex.SelectedValue;
            EditHouse.PlusCost = Convert.ToDecimal(PlusCost.Text);
            EditHouse.BuildingCost = Convert.ToDecimal(BuildingCost.Text);

            AppData.Ent.SaveChanges();
            MessageBox.Show("Успешно сохранено");
            AppData.Frame.Refresh();
            this.Close();
        }

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
