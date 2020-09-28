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
    /// Логика взаимодействия для WindowAddComplex.xaml
    /// </summary>
    public partial class WindowAddComplex : Window
    {
        public WindowAddComplex()
        {
            InitializeComponent();

            CmbStatus.ItemsSource = AppData.Ent.ConstructionStatus.ToList();
            CmbStatus.SelectedValuePath = "Id";
            CmbStatus.DisplayMemberPath = "Name";

            CmbCity.ItemsSource = AppData.Ent.City.ToList();
            CmbCity.SelectedValuePath = "Id";
            CmbCity.DisplayMemberPath = "Name";
        }

     

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Complex complex = new Complex()
            {
                Name = Name.Text,
                PlusCost = Convert.ToDecimal(PlusCost.Text),
                ConstructionStatusId = (int)CmbStatus.SelectedValue,
                BuildingCost = Convert.ToDecimal(BuildingCost.Text),
                CityId = (int)CmbCity.SelectedValue,

            };

            AppData.Ent.Complex.Add(complex);
            AppData.Ent.SaveChanges();
            AppData.Frame.Refresh();

            MessageBox.Show("Добавлено");
            this.Close();
        }
    }
}
