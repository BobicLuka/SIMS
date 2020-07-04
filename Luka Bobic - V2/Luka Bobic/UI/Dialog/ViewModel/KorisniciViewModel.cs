using Model;
using Persistance;
using Persistence;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UI.Dialog.Model;
using UI.Dialog.View;

namespace UI.Dialogs.ViewModel
{
    public class KorisniciViewModel : BaseDialogViewModel
    {
        private UserRepository repository = new UserRepository();
        private KorisniciView dialog;
		private List<ComboData<TipKorisnika>> userTypes = new List<ComboData<TipKorisnika>>();

		public KorisniciViewModel(KorisniciView view) : base(view, typeof(Korisnik))
        {
            dialog = view;
            Init();
			InitUserTypes();
        }

		public void InitUserTypes()
		{
			userTypes.Add(new ComboData<TipKorisnika> { Name = "Admin", Value = TipKorisnika.Administratior });
			userTypes.Add(new ComboData<TipKorisnika> { Name = "Lekar", Value = TipKorisnika.Lekar });
			userTypes.Add(new ComboData<TipKorisnika> { Name = "Farmaceut", Value = TipKorisnika.Farmaceut });
		}

        protected override void Init()
        {
            Items = new ObservableCollection<Entity>(repository.GetAll());
        }

		public List<ComboData<TipKorisnika>> UserTypes
		{
			get { return userTypes; }
			set
			{
				userTypes = value;
				OnPropertyChanged(nameof(UserTypes));
			}
		}

		protected override void OkCommandExecute()
        {
            ((Korisnik)SelectedItem).Password = dialog.Password;
            base.OkCommandExecute();

            ApplicationContext.Instance.Users = new List<Entity>(Items);
            repository.Save();
            Init();
        }

        protected override Entity OkAfterAddDatabase()
        {
            return SelectedItem;
        }

        protected override Entity OkAfterEditDatabase()
        {
            repository.Save();
            return SelectedItem;
        }

        protected override bool DatabaseRemove(Entity item)
        {
            repository.Remove(item);
            repository.Save();
            return true;
        }

        protected override void DoSearch()
        {
            Items = new ObservableCollection<Entity>(repository.Search(Search));
        }
    }
}
