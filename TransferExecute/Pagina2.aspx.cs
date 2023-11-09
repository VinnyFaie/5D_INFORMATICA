using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TransferExecute
{
    public partial class Pagina2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id;
            id = Request.QueryString["ID"]; //per estrarre i parametri dall'url
            if (id == "Redirect")
            {//response.write scrive in cima alla pagina
                Response.Write("Pagina richiamata da una operazione di "+id);
                //server variables è un vettore associativo con i valori di sistema
                Response.Write("<p>Dati del browser utilizzato: "+Request.ServerVariables["HTTP_USER_AGENT"]+"</p>");
                Response.Write("<p>Indirizzi IP: " + Request.ServerVariables["REMOTE_ADDR"] + "</p>");
                Response.Write("<p>Percorso fisico sul server di questa pagina: " + Server.MapPath("Pagina2.aspx") + "</p>");
                Response.Write("<p>Metodo con cui è stata richiamata la pagina: " + Request.ServerVariables["REQUEST_METHOD"] + "</p>");
                Response.Write("<p>Pagina richiesta con questa chiamata: " + Request.ServerVariables["SCRIPT_NAME"] + "</p>");
                Response.Write("<p>Nome salvato nel cookie: " + Request.Cookies["cookieName"].Value + "</p>");

            }
            else if(id=="Transfer")
            {
                Response.Write("Pagina richiamata da una operazione di " + id);
                TextBox txtUser = (TextBox)PreviousPage.FindControl("txtUser");
                Response.Write("<p>Username prevelato dalla pagina chiamante: "+txtUser.Text +"</p>");


            }
            else
            {//Execute richiama la pagina e la mette in coda alla pagina corrente
                //può essere usato per fare una pagina di impostazioni
                HttpCookie cookLogin = new HttpCookie("login");
                cookLogin.Value = "Login NOK";
                cookLogin.Expires = DateTime.Today.AddMinutes(1);
                Response.Cookies.Add(cookLogin);
                //lavora come una transfer, perchè maschera l'indirizzo
            }




        }
    }
}