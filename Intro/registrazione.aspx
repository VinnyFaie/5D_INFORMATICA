<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrazione.aspx.cs" Inherits="Intro.registrazione" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    <title>Pagina di registrazione</title>
</head>
<body class="bg-dark text-primary">
    <form id="form1" runat="server">



        <div>
            <h1 class="container container-fluid bg-primary text-white text-center" style="width:100%">
                <p><asp:Label ID="lblBenvenuto" Text="Benvenuto " runat="server" class="fw-bold"></asp:Label>
                    <hr class="text-white"/> 
                    <asp:Label ID="lblIntest" Text="Questi sono i tuoi dati di registrazione:" runat="server"></asp:Label>
                </p>
            </h1>
            <div class="container container-sm bg-primary">
                <div class="container container-sm bg-light">

            <p>
                <asp:Label ID="lblNomeIntest" Text="Nome Utente: " runat="server" />
                <asp:Label ID="lblUser" Text="" runat="server"></asp:Label>

            </p>


            <p>                
                <asp:Label ID="lblPwdIntest" Text="Password: " runat="server" />
                <asp:Label ID="lblPwd" Text="" runat="server"></asp:Label>

            </p>

            <p>
                <asp:Label ID="lblGenderIntest" Text="Sesso: " runat="server" />
                <asp:Label ID="lblGender" Text="" runat="server"></asp:Label>

            </p>
            <p>
                <asp:Label ID="lblSessionIntest" Text="Session ID: " runat="server" />

                <asp:Label ID="lblSessionId" Text="" runat="server"></asp:Label></p>
                    <hr class="text-primary"/>
            <p>
                <asp:Button Text="Torna alla Home Page" runat="server" class="btn btn-success" OnClick="btnBack_Click"/></p>

                    <br/>
                </div>

            

            </div>







        </div>
    </form>
</body>
</html>
