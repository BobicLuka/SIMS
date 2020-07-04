using CompositeCommon;
using Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using UI.Dialog.View;

namespace UI.Components.Toolbar.ViewModel
{
    public class ToolbarViewModel : ViewModelBase
    {
        private RelayCommand userCommand;
        private RelayCommand drugCommand;
        private RelayCommand recepieCommand;
        private RelayCommand receitCommand;
		private RelayCommand helpCommand;
		private Korisnik user;

		private MainWindowViewModel mainWindowViewModel;

		public RelayCommand HelpCommand
		{
			get
			{
				return helpCommand ?? (helpCommand = new RelayCommand(param => HelpCommandExecute()));
			}
		}


		public RelayCommand ReceitCommand
		{
			get
			{
				return receitCommand ?? (receitCommand = new RelayCommand(param => ReceitCommandExecute()));
			}
		}

		public RelayCommand UserCommand
        {
            get
            {
                return userCommand ?? (userCommand = new RelayCommand(param => UserCommandExecute()));
            }
        }

        public RelayCommand DrugCommand
        {
            get
            {
                return drugCommand ?? (drugCommand = new RelayCommand(param => DrugCommandExecute()));
            }
        }

        public RelayCommand RecepieCommand
		{
            get
            {
                return recepieCommand ?? (recepieCommand = new RelayCommand(param => RecepieCommandExecute()));
            }
        }

		public Korisnik User
		{
			get { return user; }
			set
			{
				user = value;
				OnPropertyChanged(nameof(User));
				OnPropertyChanged(nameof(IsUserVisible));
				OnPropertyChanged(nameof(IsDrugVisible));
				OnPropertyChanged(nameof(IsRecepieVisible));
				OnPropertyChanged(nameof(IsRecepVisible));
			}
		}

		public Visibility IsUserVisible
		{
			get { return user != null && user.TipKorisnika == TipKorisnika.Administratior ? Visibility.Visible : Visibility.Collapsed; }
		}

		public Visibility IsDrugVisible
		{
			get { return user != null && (user.TipKorisnika == TipKorisnika.Administratior ||
					user.TipKorisnika == TipKorisnika.Farmaceut) ? Visibility.Visible : Visibility.Collapsed; }
		}

		public Visibility IsRecepieVisible
		{
			get
			{
				return user != null && (user.TipKorisnika == TipKorisnika.Administratior ||
				  user.TipKorisnika == TipKorisnika.Lekar) ? Visibility.Visible : Visibility.Collapsed;
			}
		}

		public Visibility IsRecepVisible
		{
			get
			{
				return user != null && (user.TipKorisnika == TipKorisnika.Administratior ||
				  user.TipKorisnika == TipKorisnika.Farmaceut) ? Visibility.Visible : Visibility.Collapsed;
			}
		}

		public MainWindowViewModel MainWindowViewModel
        {
            get { return mainWindowViewModel; }
            set { mainWindowViewModel = value; }
        }

        private void UserCommandExecute()
        {
			KorisniciView view = new KorisniciView();

			view.ShowDialog();
		}

        private void DrugCommandExecute()
        {
			LekView view = new LekView();

			view.ShowDialog();

		}

        private void RecepieCommandExecute()
        {
			ReceptView view = new ReceptView();

			view.ShowDialog();
		}

        private void ReceitCommandExecute()
        {
			RacunView view = new RacunView();

			view.ShowDialog();
		}

		private void HelpCommandExecute()
		{
			System.Diagnostics.Process.Start(System.AppDomain.CurrentDomain.BaseDirectory + "\\test.chm");
		}

	}
}
