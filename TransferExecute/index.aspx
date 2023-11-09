<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TransferExecute.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <title>Redirect Transfer Execute</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron container">
  
            <div class="row">
                <div class="col-sm-4">
                    <asp:Button ID="btnRedirect" Text="REDIRECT" runat="server" class="btn btn-primary w-100 m-3" OnClick="btnRedirect_Click"/>
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="btnTransfer" Text="TRANSFER" runat="server" class="btn btn-danger w-100 m-3" OnClick="btnTransfer_Click"/>
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="btnExecute" Text="EXECUTE" runat="server" class="btn btn-success w-100 m-3" OnClick="btnExecute_Click"/>
                </div>
            </div>

        </div>

        <div>
            User: <asp:TextBox ID="txtUser" runat="server" class="form-control"></asp:TextBox>
        </div>

        <asp:Label ID="lblLogin" runat="server" Text="" class="text-danger" Font-Size="Large"></asp:Label>



    </form>
</body>
</html>
