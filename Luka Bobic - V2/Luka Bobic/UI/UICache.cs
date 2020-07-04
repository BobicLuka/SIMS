using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UI
{
	public static class UICache
	{
		private static Korisnik user;

		public static Korisnik User
		{
			get { return user; }
			set
			{
				user = value;
			}
		}
	}
}
