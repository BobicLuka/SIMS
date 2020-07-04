using Model;
using Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistance
{
    public class UserRepository : Repository<Korisnik>
    {
		public override IEnumerable<Entity> Search(string term = "")
		{
			List<Entity> result = new List<Entity>();

			foreach (Entity user in ApplicationContext.Instance.Users)
			{
				if (((Korisnik)user).Ime.Contains(term) || ((Korisnik)user).Prezime.Contains(term) || ((Korisnik)user).ID.Contains(term) ||
					((Korisnik)user).Username.Contains(term))
				{
					result.Add(user);
				}
			}

			return result;
		}

		public Korisnik GetUserWithUsernameAndPassword(string username, string password)
		{
			foreach (Entity user in ApplicationContext.Instance.Users)
			{
				if (((Korisnik)user).Username == username && ((Korisnik)user).Password == password)
				{
					return user as Korisnik;
				}
			}

			return null;
		}
	}
}
