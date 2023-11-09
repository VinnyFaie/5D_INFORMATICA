using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TransferExecute
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            HttpCookie cook = new HttpCookie("cookieName");
            cook.Value = "vincenzofaiella";
            cook.Expires = DateTime.Today.AddDays(1);
            Response.Cookies.Add(cook);
            //Response.Redirect("http://www.vallauri.edu");
            Response.Redirect("Pagina2.aspx?ID=Redirect",true);//se il secondo parametro del redirect è true, vengono bloccate le esecuzioni di pagina2
            Response.Redirect("Pagina3.aspx");
        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {

            Server.Transfer("Pagina2.aspx?ID=Transfer");
            //Server.Transfer("http://www.vallauri.edu");
            //Con la server.transfer possiamo trasferire i controlli dell'applicazione SOLO all'interno della nostra applicazione, quindi non possiamo richiamare, in questo caso, il sito del vallauri essendo una risorsa esterna al nostro progetto.
        }

        protected void btnExecute_Click(object sender, EventArgs e)
        {
            Server.Execute("Pagina2.aspx?ID=Execute");
            if (Request.Cookies["login"] != null)
            {
                if(Request.Cookies["login"].Value == "Login OK")
                {
                    Response.Redirect("Pagina3.aspx");
                }
                else
                {
                    lblLogin.Text = "Login errato";
                }
            }
        }
    }
}