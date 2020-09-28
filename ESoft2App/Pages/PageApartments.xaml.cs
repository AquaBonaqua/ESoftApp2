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

namespace ESoft2App.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageApartments.xaml
    /// </summary>
    public partial class PageApartments : Page
    {
        public PageApartments()
        {
            InitializeComponent();

            ApartmentsGrid.ItemsSource = AppData.Ent.Apartment.ToList();
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            AppData.Frame.GoBack();
        }
    }
}
