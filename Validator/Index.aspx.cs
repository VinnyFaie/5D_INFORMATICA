using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validator
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // RequiredFieldValidator per COGNOME
                RFVCognome.ControlToValidate = "txtCognome";
                RFVCognome.SetFocusOnError = true;
                RFVCognome.ErrorMessage = "Il campo COGNOME è obbligatorio.";
                RFVCognome.EnableClientScript = false;
                RFVCognome.ForeColor = System.Drawing.Color.DarkRed;

                // RangeValidator per ETA'
                RVEta.ControlToValidate = "txtEta";
                RVEta.MinimumValue = "18";
                RVEta.MaximumValue = "35";
                RVEta.SetFocusOnError = true;
                RVEta.ErrorMessage = "Il campo ETA' è obbligatorio e deve essere compreso tra 18 e 35 anni.";
                RVEta.Type = ValidationDataType.Integer;
                RVEta.EnableClientScript = false;
                RVEta.ForeColor = System.Drawing.Color.DarkRed;
            }
        }

        protected void btnInvia_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblErrore.Text = "";
                Response.Redirect("http://www.vallauri.edu");
            }
            else
            {
                lblErrore.Text = "Il form non è completo o ci sono errori di compilazione!";
            }
        }
    }
}