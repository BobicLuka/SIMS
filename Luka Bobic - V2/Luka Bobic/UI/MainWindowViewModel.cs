using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UI.Components.Toolbar.ViewModel;

namespace UI
{
    public class MainWindowViewModel
    {
        private ToolbarViewModel toolbarViewModel;


        public ToolbarViewModel ToolbarViewModel
        {
            get { return toolbarViewModel; }
            set { toolbarViewModel = value; }
        }

    }
}
