using Model;
using Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistance
{
    public class DrugRepository : Repository<Lek>
    {
		public override IEnumerable<Entity> Search(string term = "")
		{
			List<Entity> result = new List<Entity>();

			foreach (Entity drug in ApplicationContext.Instance.Drugs)
			{
				if (((Lek)drug).Ime.Contains(term) || ((Lek)drug).Proizvodjac.Contains(term) || ((Lek)drug).ID.Contains(term))
				{
					result.Add(drug);
				}
			}

			return result;
		}
	}
}
