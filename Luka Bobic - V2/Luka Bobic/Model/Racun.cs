using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
     public class Racun : Entity
    {
        private string lekar;
        private DateTime vreme;
        private Dictionary<string, double> lekovi = new Dictionary<string, double>();
        private double cena;

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
        public Dictionary<string,double> Lekovi
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
        public double Cena
        {
            get
            {
                return cena;
            }
            set
            {
                cena = value;
                OnPropertyChanged(nameof(Cena));
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
    }
}
