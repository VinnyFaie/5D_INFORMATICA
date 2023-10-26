using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Intro
{
    public partial class registrazione : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nome, pwd, sex;
            //se è la prima volta che carico la pagina, la label non si incasina
            if (!Page.IsPostBack)
            {
                if(Session["nome"]!=null && Session["pwd"] != null)
                {
                    nome = Session["nome"].ToString();
                    pwd = Session["pwd"].ToString();
                    sex = Request.QueryString["sesso"];
                    //sex = Session["sex"].ToString();

                    lblBenvenuto.Text += nome;
                    lblUser.Text = nome;
                    lblPwd.Text = pwd;
                    lblGender.Text = sex;
                    lblSessionId.Text = Session.SessionID;
                }
                else
                {
                    lblBenvenuto.Text = "Utente non loggato. Eseguire il Login per accedere al sito!";
                    lblUser.Visible = false;
                    lblPwd.Visible = false;
                    lblGender.Visible = false;
                    lblSessionId.Visible = false;
                    lblNomeIntest.Visible = false;
                    lblPwdIntest.Visible = false;
                    lblGenderIntest.Visible = false;
                    lblSessionIntest.Visible = false;
                    lblIntest.Visible = false;
                }

            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}