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
    /// Логика взаимодействия для WindowComplex.xaml
    /// </summary>
    public partial class WindowComplex : Window
    {
        Complex EditComplex;

        public WindowComplex(Complex complex)
        {
            InitializeComponent();
            EditComplex = complex;



          CmbStatus.ItemsSource = AppData.Ent.ConstructionStatus.ToList();
          CmbStatus.SelectedValuePath = "Id";
          CmbStatus.DisplayMemberPath = "Name";

            


            CmbCity.ItemsSource = AppData.Ent.City.ToList();
            CmbCity.SelectedValuePath = "Id";
            CmbCity.DisplayMemberPath = "Name";


            Name.Text = complex.Name;
            PlusCost.Text = complex.PlusCost.ToString();
            CmbStatus.SelectedValue = complex.ConstructionStatusId;
            BuildingCost.Text = complex.BuildingCost.ToString();
            CmbCity.SelectedValue = complex.CityId;

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Btn_Click(object sender, RoutedEventArgs e)
        {
            EditComplex.Name = Name.Text;
            EditComplex.PlusCost = Convert.ToDecimal(PlusCost.Text);
            EditComplex.ConstructionStatusId = (int)CmbStatus.SelectedValue;
            EditComplex.BuildingCost = Convert.ToDecimal(BuildingCost.Text);
            EditComplex.CityId = (int)CmbCity.SelectedValue;
            AppData.Ent.SaveChanges();
            MessageBox.Show("Успешно сохранено");
            AppData.Frame.Refresh();
            this.Close();
        }

        private void CmbStatus_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
         
        }
    }
}
