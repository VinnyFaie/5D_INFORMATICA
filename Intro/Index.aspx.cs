using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Intro
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTitolo.Text = "Pagina Web ASP.Net";

            if (Page.IsPostBack)
            {
                lblState.Text = "Postback della pagina. La pagina ha ricaricato se stessa!";
            }
        }
    }
}