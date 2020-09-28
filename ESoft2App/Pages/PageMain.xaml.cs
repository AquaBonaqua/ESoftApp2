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
using ESoft2App.Pages;
using ESoft2App.Class;

namespace ESoft2App.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageMain.xaml
    /// </summary>
    public partial class PageMain : Page
    {
        public PageMain()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            AppData.Frame.Navigate(new PageComplexes());
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            AppData.Frame.Navigate(new PageHouses());
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            AppData.Frame.Navigate(new PageApartments());
        }
    }
}
