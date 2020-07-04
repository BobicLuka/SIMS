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
    /// Interaction logic for RecepieView.xaml
    /// </summary>
    public partial class ReceptView : Window
    {
        public ReceptView()
        {
            InitializeComponent();

            DataContext = new ReceptiViewModel(this);
        }

		public void Refresh()
		{
			rDataGrid.Items.Refresh();
		}
    }
}
