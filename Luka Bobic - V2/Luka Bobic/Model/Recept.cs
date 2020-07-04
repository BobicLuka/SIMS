using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Recept : Entity
    {
        private string jmbg;
        private DateTime vreme;
		private string lekar;
        private Dictionary<string, double> lekovi = new Dictionary<string, double>();

		public string Lekar
		{
			get
			{
				return lekar;
			}
			set
			{
				lekar = value;
				OnPropertyChanged(nameof(Lekar));
			}
		}

        public string JMBG
        {
            get
            {
                return jmbg;
            }
            set
            {
                jmbg = value;
                OnPropertyChanged(nameof(JMBG));
            }
        }
		public DateTime Vreme
        {
            get
            {
                return vreme;
            }
            set
            {
                vreme = value;
                OnPropertyChanged(nameof(Vreme));
            }

        }
        public Dictionary<string, double> Lekovi
        {
            get
            {
                return lekovi;
            }
            set
            {
                lekovi = value;
                OnPropertyChanged(nameof(Lekovi));
            }
        }
        public override void InitExportList()
        {
            throw new NotImplementedException();
        }

        public override string Validate(string columnName)
        {
			return null;
        }

		public void Refresh()
		{
			OnPropertyChanged(nameof(Lekovi));
		}
	}
}
