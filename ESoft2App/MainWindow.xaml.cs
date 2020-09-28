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
using MahApps.Metro.Controls;

namespace ESoft2App
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
            AppData.Frame = MainFrame;
            AppData.Ent = new eSoft2Entities();
            AppData.Frame.Navigate(new PageMain());
        }
    }
}
