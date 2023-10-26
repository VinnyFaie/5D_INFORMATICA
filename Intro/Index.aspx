<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Intro.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    <title>Sito Web APS.Net</title>
</head>
<body>
    <form id="form1" runat="server"> <%-- action="registrazione.aspx" method="get"
        
        Devo anche non avere l'action con il method per fare in modo che la mia funzione fatta sul CS
        funzioni. 
        
        
        --%>
        <div class="container text-center">
            <asp:Label ID="lblTitolo" runat="server" Text=""></asp:Label>

        </div>

        <section class="container">
            <div class="bg-warning p-3 mt-2 row">  
            <%-- 
                ogni bottone è un bottone di submit.
                
            
            --%>
            
            <div class="col-sm-6">
                <asp:Label ID="lblUser" for="txtUSer" runat="server" Text="Inserire Username"></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="txtUser" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>

            <div class="bg-warning p-3 mt-2 row">  
            <div class="col-sm-6">
                <asp:Label ID="lblPassword" for="txtPwd" runat="server" Text="Inserire Password"></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="txtPwd" type="password" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>


            <div class="bg-warning p-3 mt-2 row">  
            <div class="col-sm-6">
                <asp:Label ID="lblSesso" runat="server" for="cboSex" Text="Sesso"></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:DropDownList ID="cboSex" runat="server" class="form-control">
                    <asp:ListItem>Uomo</asp:ListItem>
                    <asp:ListItem>Donna</asp:ListItem>
                    <asp:ListItem>Ah Boh</asp:ListItem>

                </asp:DropDownList>
            </div>
        </div>



        <div class="bg-warning p-3 mt-2 row">  
            <div class="col-sm-3">
                <asp:Button Text="Invia dati" runat="server" class="btn btn-success" OnClick="BtnInvia_Click" />
            </div>

            <div class="col-sm-3">
                <%-- La session è stata settata solo sull'altro bottone, quindi per questo dovremo inserirlo anche su
                    Questo bottone.
                
                --%>
                <asp:Button ID="btnAspSubmit" runat="server" Text="Button ASP Submit" type="submit" class="btn btn-info"/>
            </div>

            <div class="col-sm-3">
                <%--
                    La stesso cosa succede anche con questo bottone, perché TUTTI i bottoni di ASP net sono di tipo submit.    
                --%>
                <asp:Button ID="Button1" runat="server" Text="Button ASP" class="btn btn-primary"/>

            </div>

            <div class="col-sm-3">
                <%--
                    Lavora come gli altri due.    
                --%>
                <input type="submit" name="name" value="Submit Tradizionale" class="btn btn-dark"/>

            </div>



        </div>
        
            
            
            
            
            
            
        <div class="bg-warning p-3 mt-2">
            <asp:Label ID="lblState" runat="server" Text=""></asp:Label>

        </div>

        </section>



    </form>
</body>
</html>
