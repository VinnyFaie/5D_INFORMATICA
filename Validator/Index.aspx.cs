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

                // CompareValidator per PASSWORD
                CVPassword.ControlToValidate = "txtConfPwd";
                CVPassword.ControlToCompare = "txtPwd";
                CVPassword.Operator = ValidationCompareOperator.Equal;
                CVPassword.Type = ValidationDataType.String;
                CVPassword.SetFocusOnError = true;
                CVPassword.ErrorMessage = "Le due password inserite non coincidono!";
                RVEta.EnableClientScript = false;
                RVEta.ForeColor = System.Drawing.Color.DarkRed;

                // CompareValidator ROBOT
                CVRobot.ControlToValidate = "txtRobot";
                CVRobot.ValueToCompare = "norobot";
                CVRobot.Operator = ValidationCompareOperator.Equal;
                CVRobot.Type = ValidationDataType.String;
                CVRobot.SetFocusOnError = true;
                CVRobot.ErrorMessage = "Il testo inserito non è corretto!";
                RVEta.EnableClientScript = false;
                RVEta.ForeColor = System.Drawing.Color.DarkRed;

                //CUSTOM
                CustVal.ControlToValidate = "txtCustom";
                CustVal.SetFocusOnError = true;
                CustVal.ErrorMessage = "il campo deve essere composto da almento 8 caratteri(char)!";
                CustVal.ValidateEmptyText = true;
                RVEta.EnableClientScript = false;
                RVEta.ForeColor = System.Drawing.Color.DarkRed;

                //VALIDATIONSUMMARY
                VS.HeaderText = "Errori riscontrati nel form";
                VS.DisplayMode = ValidationSummaryDisplayMode.BulletList;
                VS.ShowMessageBox = true;
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

        protected void CustVal_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 8)
            {
                args.IsValid = true; //ho validato il controllo
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}