using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model 
{
   public class Lek : Entity
    {
        private string ime = string.Empty;
        private string proizvodjac = string.Empty;
        private bool izdat = true;
        private double cena = 0;

        public string Ime
        {
            get
            {
                return ime;

            }
            set
            {
                ime = value;
                OnPropertyChanged(nameof(Ime));
            }
        }
        public string Proizvodjac
        {
            get
            {
                return proizvodjac;
            }
            set
            {
                proizvodjac = value;
                OnPropertyChanged(nameof(Proizvodjac));
         
            }
        }
        public bool Izdat
        {
            get
            {
                return izdat;
            }
            set
            {
                izdat = value;
                OnPropertyChanged(nameof(Izdat));
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
