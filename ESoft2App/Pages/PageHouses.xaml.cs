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
using ESoft2App.Windows;

namespace ESoft2App.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageHouses.xaml
    /// </summary>
    public partial class PageHouses : Page
    {
        public PageHouses()
        {
            InitializeComponent();

            CmbComplex.ItemsSource = AppData.Ent.City.ToList();
            CmbComplex.SelectedValuePath = "Id";
            CmbComplex.DisplayMemberPath = "Name";

            UpdateTable();
        }


        public void UpdateTable()
        {
            if (CmbComplex.SelectedIndex == -1)

            {
                ComplexesGrid.ItemsSource = AppData.Ent.House.ToList();
            }

            else
            {
                ComplexesGrid.ItemsSource = AppData.Ent.House.Where(x => x.ComplexId == (int)CmbComplex.SelectedValue).ToList();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AppData.Frame.GoBack();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            WindowAddHouse editform = new WindowAddHouse();
            editform.Show();
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            AppData.Frame.GoBack();
        }

        private void DeleteHouse_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Вы уверены?", "Удаление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.No) { }

            else
            {
                House house = ((sender as Button).DataContext as House);
                AppData.Ent.House.Remove(house);
                AppData.Ent.SaveChanges();
                UpdateTable();

            }
        }

        private void EditHouse_Click(object sender, RoutedEventArgs e)
        {
            House house = (sender as Button).DataContext as House;
            WindowHouse editform = new WindowHouse(house);
            editform.Show();
        }
    }
}
