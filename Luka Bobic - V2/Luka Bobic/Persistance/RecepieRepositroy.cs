using Model;
using Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistance
{
    public class RecepieRepository : Repository<Recept>
    {
		public override IEnumerable<Entity> Search(string term = "")
		{
			List<Entity> result = new List<Entity>();

			foreach (Entity item in ApplicationContext.Instance.Recepies)
			{
				if (((Recept)item).ID.Contains(term) || ((Recept)item).JMBG.Contains(term) || ((Recept)item).Lekar.Contains(term) || ((Recept)item).Lekovi.ContainsKey(term))
				{
					result.Add(item);
				}
			}

			return result;
		}
	}
}
