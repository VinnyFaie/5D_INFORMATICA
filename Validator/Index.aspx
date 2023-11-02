<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Validator.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    <title>Validator</title>
</head>
<body>


    <%-- I validator sono degli oggetti che ci fornisce ASP.NET per
        Controllare le variabili in un modo simile alle REGEX --%>


    <form id="form1" runat="server">
        <div class="containter">


            
            <div class="row" controltovalidate="txtMail">

                <%-- REQUIREDFIELD --%>
                <div class="col-sm-3 bg-info">
                    <asp:Label ID="Label1" runat="server" Text="Cognome: "></asp:Label>
                </div>

                <div class="col-sm-5 bg-primary">
                    <asp:TextBox ID="txtCognome" runat="server" class="form-control w-100"></asp:TextBox>
                </div>

                <div class="col-sm-4 bg-success">
                    <asp:RequiredFieldValidator ID="RFVCognome" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </div>



            <%-- RANGE --%>

                <div class="col-sm-3 bg-info">
                    <asp:Label ID="lblEta" runat="server" Text="Età: "></asp:Label>
                </div>

                <div class="col-sm-5 bg-primary">
                    <asp:TextBox ID="txtEta" runat="server" class="form-control w-100"></asp:TextBox>
                </div>

                <div class="col-sm-4 bg-success">
                    <asp:RangeValidator ID="RVEta" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>
                </div>


                <%-- REGEX --%>

                <div class="col-sm-3 bg-info">
                    <asp:Label ID="lblEmail" runat="server" Text="E-mail: "></asp:Label>
                </div>

                <div class="col-sm-5 bg-primary">
                    <asp:TextBox ID="txtMail" runat="server" class="form-control w-100"></asp:TextBox>
                </div>

                <div class="col-sm-4 bg-success">
                    <asp:RegularExpressionValidator ID="REemail" runat="server" ErrorMessage="Il campo mail non è corretto!" ControlToValidate="txtMail" SetFocusOnError="True" EnableClientScript="False" ForeColor="DarkRed" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

                
                <%-- REGEX --%>

                <div class="col-sm-3 bg-info">
                    <asp:Label ID="lblPwd" runat="server" Text="Password: "></asp:Label>
                </div>

                <div class="col-sm-5 bg-primary">
                    <asp:TextBox ID="txtPwd" runat="server" class="form-control w-100"></asp:TextBox>
                </div>

                
                <div class="col-sm-3 bg-info">
                    <asp:Label ID="lblPwd2" runat="server" Text="Conferma Password: "></asp:Label>
                </div>

                <div class="col-sm-5 bg-primary">
                    <asp:TextBox ID="txtPwd2" runat="server" class="form-control w-100"></asp:TextBox>
                </div>

                <div class="col-sm-4 bg-success">
                    <asp:CompareValidator ID="CVPassword" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                </div>


                <hr class="text-success"/>




        </div>


                <div class="containter containter-fluid">
                    <asp:Button Text="Registrati" ID="btnInvia" runat="server" class="btn btn-success w-100" OnClick="btnInvia_Click"/>
                </div>
                <div forecolor="Red">
                    <asp:Label Text="" ID="lblErrore" runat="server" Font-Bold="True" Font-Size="Large" />
                </div>
            </div>
    </form>
</body>
</html>
