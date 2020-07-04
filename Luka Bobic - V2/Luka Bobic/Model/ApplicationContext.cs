using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public  class ApplicationContext
    {
        private static ApplicationContext instance = null;
        private List<Entity> drugs;
        private List<Entity> receits;
        private List<Entity> recepies;
        private List<Entity> users;

        public static ApplicationContext Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ApplicationContext();
                }

                return instance;
            }
        }
        public List<Entity> Drugs
        {
            get
            {
                if(drugs == null)
                {
                    drugs = ImportDrugs();
                }

                return drugs;
            }
            set
            {
                drugs = value;
            }
        }

        public List<Entity> Receits
        {
            get
            {
                if(receits == null)
                {
                    receits = ImportReceits();
                }

                return receits;
            }
            set
            {
                receits = value;
            }
        }

        public List<Entity> Recepies
        {
            get
            {
                if (recepies == null)
                {
                    recepies = ImportRecepies();
                }

                return recepies;
            }
            set
            {
                recepies = value;
            }
        }

        public List<Entity> Users
        {
            get
            {
                if (users == null)
                {
                    users = ImportUsers();
                }

                return users;
            }
            set
            {
                users = value;
            }
        }
        public List<Entity> ImportUsers()
        {
            List<Entity> result = new List<Entity>();

            if(!File.Exists("users.txt"))
            {
                return result;
            }

            StreamReader reader = new StreamReader("users.txt");
            string line;

            while ((line = reader.ReadLine()) != null)
            {
                string[] data = line.Split('|');

                Korisnik user = new Korisnik();
                user.ID = data[0];
                user.Username = data[1];
                user.Password = data[2];
                user.Ime = data[3];
                user.Prezime = data[4];
				user.TipKorisnika = GetUserType(data[5]);
                result.Add(user);
            }

            return result;
        }

        public List<Entity> Get(Type type)
        {
            if (type == typeof(Lek))
            {
                return Drugs;
            }
            else if (type == typeof(Racun))
            {
                return Receits;
            }
            else if (type == typeof(Korisnik))
            {
                return Users;
            }

            return Recepies;
        }

        public void Set(Type type, List<Entity> entities)
        {
            if (type == typeof(Lek))
            {
                Drugs = entities;
            }
            else if (type == typeof(Racun))
            {
                Receits = entities;
            }
            else if (type == typeof(Korisnik))
            {
                Users = entities;
            }

            Recepies = entities;
        }

        public void SaveUsers()
        {
            if(users == null)
            {
                return;
            }

            using (StreamWriter file = new StreamWriter("users.txt"))
            {
                foreach (Entity entity in Users)
                {
                    string line = string.Empty;

                    line += ((Korisnik)entity).ID + "|";
                    line += ((Korisnik)entity).Username + "|";
                    line += ((Korisnik)entity).Password + "|";
                    line += ((Korisnik)entity).Ime + "|";
                    line += ((Korisnik)entity).Prezime + "|";
					line += ((Korisnik)entity).TipKorisnika.ToString() ;

					file.WriteLine(line);
                }
            }
        }

		public void SaveRecepie()
		{
            if(recepies == null)
            {
                return;
            }

			using (StreamWriter file = new StreamWriter("recepie.txt"))
			{
				foreach (Entity entity in Recepies)
				{
					string line = string.Empty;
					((Recept)entity).ID = GenerateRecepieID().ToString();
					line += ((Recept)entity).ID + "|";
					line += ((Recept)entity).Lekar + "|";
					line += ((Recept)entity).JMBG + "|";
					line += ((Recept)entity).Vreme.ToString("MM/dd/yyyy") + "|";

					string drugs = string.Empty;

					foreach (KeyValuePair<string, double> item in ((Recept)entity).Lekovi)
					{
						drugs += item.Key + "," + item.Value + ";";
					}

					if (drugs != "")
					{
						drugs.Remove(drugs.Length - 1);
					}

					line += drugs;

					file.WriteLine(line);
				}
			}
		}

		public List<Entity> ImportRecepies()
		{
			List<Entity> result = new List<Entity>();

			if (!File.Exists("recepie.txt"))
			{
				return result;
			}

			StreamReader reader = new StreamReader("recepie.txt");
			string line;

			while ((line = reader.ReadLine()) != null)
			{
				string[] data = line.Split('|');

				Recept recepie = new Recept();
				recepie.ID = data[0];
				recepie.Lekar = data[1];
				recepie.JMBG = data[2];
				recepie.Vreme = DateTime.ParseExact(data[3], "MM/dd/yyyy", null);

				Dictionary<string, double> dic = new Dictionary<string, double>();

				string[] items = data[4].Split(';');

				foreach(string i in items)
				{
					if(i == "")
					{
						continue;
					}

					string[] ii = i.Split(',');

					dic.Add(ii[0], double.Parse(ii[1]));
				}

				recepie.Lekovi = dic;

				result.Add(recepie);
			}

			return result;
		}

		public void SaveDrugs()
        {
            if(drugs == null)
            {
                return;
            }

            using (StreamWriter file = new StreamWriter("drugs.txt"))
            {
                foreach (Entity entity in Drugs)
                {
                    string line = string.Empty;

                    line += ((Lek)entity).ID + "|";
                    line += ((Lek)entity).Ime + "|";
                    line += ((Lek)entity).Izdat + "|";
                    line += ((Lek)entity).Cena;

                    file.WriteLine(line);
                }
            }
        }

        public List<Entity> ImportDrugs()
        {
            List<Entity> result = new List<Entity>();

            if (!File.Exists("drugs.txt"))
            {
                return result;
            }

            StreamReader reader = new StreamReader("drugs.txt");
            string line;

            while ((line = reader.ReadLine()) != null)
            {
                string[] data = line.Split('|');

                Lek drug = new Lek();
                drug.ID = data[0];
                drug.Ime = data[1];
                drug.Izdat = data[2] == "True" ? true : false;
                drug.Cena = double.Parse(data[3]);
                

                result.Add(drug);
            }

            return result;
        }

		public void SaveReceis()
		{
            if(receits == null)
            {
                return;
            }

			using (StreamWriter file = new StreamWriter("receis.txt"))
			{
				foreach (Entity entity in Receits)
				{
					string line = string.Empty;
					((Racun)entity).ID = GenerateReceitsID().ToString();
					line += ((Racun)entity).ID + "|";
					line += ((Racun)entity).Cena.ToString() + "|";
					line += ((Racun)entity).Lekar + "|";
					line += ((Racun)entity).Vreme.ToString("MM/dd/yyyy") + "|";

					string drugs = string.Empty;

					foreach (KeyValuePair<string, double> item in ((Racun)entity).Lekovi)
					{
						drugs += item.Key + "," + item.Value + ";";
					}

					if (drugs != "")
					{
						drugs.Remove(drugs.Length - 1);
					}

					line += drugs;

					file.WriteLine(line);
				}
			}
		}

		public List<Entity> ImportReceits()
		{
			List<Entity> result = new List<Entity>();

			if (!File.Exists("receis.txt"))
			{
				return result;
			}

			StreamReader reader = new StreamReader("receis.txt");
			string line;

			while ((line = reader.ReadLine()) != null)
			{
				string[] data = line.Split('|');

				Racun recepie = new Racun();
				recepie.ID = data[0];
				recepie.Cena = double.Parse(data[1]);
				recepie.Lekar = data[2];
				recepie.Vreme = DateTime.ParseExact(data[3], "MM/dd/yyyy", null);

				Dictionary<string, double> dic = new Dictionary<string, double>();

				string[] items = data[4].Split(';');
				
				foreach (string i in items)
				{
					if (i == "")
					{
						continue;
					}

					string[] ii = i.Split(',');

					dic.Add(ii[0], double.Parse(ii[1]));
				}

				recepie.Lekovi = dic;

				result.Add(recepie);
			}

			return result;
		}

		public void Save()
        {
            SaveUsers();
            SaveDrugs();
			SaveRecepie();
			SaveReceis();
		}

		public int GenerateRecepieID()
		{
			int i = 0;

			foreach(Entity entity in Recepies)
			{
				if(entity.ID == "" )
				{
					continue;
				}

				if(int.Parse(entity.ID) > i)
				{
					i = int.Parse(entity.ID);
				}
			}

			return i + 1; 
		}

		public int GenerateReceitsID()
		{
			int i = 0;

			foreach (Entity entity in Recepies)
			{
				if (entity.ID == "")
				{
					continue;
				}

				if (int.Parse(entity.ID) > i)
				{
					i = int.Parse(entity.ID);
				}
			}

			return i + 1;
		}

		public TipKorisnika GetUserType(string value)
		{
			if(value == "Administratior")
			{
				return TipKorisnika.Administratior;
			}

			if(value == "Lekar")
			{
				return TipKorisnika.Lekar;
			}

			return TipKorisnika.Farmaceut;
		}
	}
}
