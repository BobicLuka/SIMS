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
using UI.Dialogs.ViewModel;

namespace UI.Dialog.View
{
    /// <summary>
    /// Interaction logic for UserView.xaml
    /// </summary>
    public partial class KorisniciView : Window
    {
        public KorisniciView()
        {
            InitializeComponent();

            DataContext = new KorisniciViewModel(this);
        }

        public string Password
        {
            get
            {
                if (password == null || password.Password == null)
                {
                    return string.Empty;
                }

                return password.Password.ToString();
            }
        }
    }
}
