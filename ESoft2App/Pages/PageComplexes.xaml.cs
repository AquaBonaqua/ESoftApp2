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
using System.Windows.Navigation;
using System.Windows.Shapes;
using ESoft2App.Class;
using ESoft2App.Pages;
using ESoft2App.Windows;

namespace ESoft2App.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageComplexes.xaml
    /// </summary>
    public partial class PageComplexes : Page
    {
        public PageComplexes()
        {
            InitializeComponent();
            CmbCity.ItemsSource = AppData.Ent.City.ToList();
            CmbCity.SelectedValuePath = "Id";
            CmbCity.DisplayMemberPath = "Name";

            UpdateTable();
        }


        public void UpdateTable()
        {
            if (CmbCity.SelectedIndex == -1)

            {
                ComplexesGrid.ItemsSource = AppData.Ent.Complex.ToList();
            }

            else
            {
                ComplexesGrid.ItemsSource = AppData.Ent.Complex.Where(x => x.CityId == (int)CmbCity.SelectedValue).ToList(); ;
            }

            
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AppData.Frame.GoBack();
        }

        private void AddComplex_Click(object sender, RoutedEventArgs e)
        {
            WindowAddComplex editform = new WindowAddComplex();
            editform.Show();
        }

        private void CmbStatus_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {


            UpdateTable();
        }

      

        private void DeleteComplex_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Вы уверены?", "Удаление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.No) { }

            else
            {
                Complex complex = ((sender as Button).DataContext as Complex);
                AppData.Ent.Complex.Remove(complex);
                AppData.Ent.SaveChanges();
                UpdateTable();

            }

        }

        private void EditComplex_Click(object sender, RoutedEventArgs e)
        {
            Complex complex = (sender as Button).DataContext as Complex;
            WindowComplex editform = new WindowComplex(complex);
            editform.Show();
        }
    }
}
