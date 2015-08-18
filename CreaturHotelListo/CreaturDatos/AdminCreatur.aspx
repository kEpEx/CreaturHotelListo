<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCreatur.aspx.cs" Inherits="CreaturDatos.AdminCreatur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <title>Creatur Turismo Creativo S.A. de C.V.</title>
    <link rel="stylesheet" type="text/css" href="css/AdminCrea.css"/>
    <link rel="stylesheet" type="text/css" href="css/Normalize.css"/>    
</head>
<body>

    <header id="HeaderAgrUsuario">
        <div id="conTitulo">
        <h1>Agregar Usuario</h1>
        </div>
    </header>

    <div id="formAgreUsuario">
    
    <form runat="server">

             <asp:ImageButton ID="imgBtnHome" runat="server" ImageUrl="~/img/homebtn.png" style="position:absolute; top:8px; width:60px; height:60px; left:1080px;" OnClick="imgBtnHome_Click"/>
            <asp:Label ID="lblHome" runat="server" Text="Inicio" style="position:absolute; top:70px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size:12px; color:white; left:1097px;" ></asp:Label>

            <div id="agreNombre">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre: " style="position:absolute; top:366px; left:565px;"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" style="position:absolute; top:365px; left:680px;"></asp:TextBox>
            </div>

            <div id="agreCorreo">
                <asp:Label ID="lblCorreo" runat="server" Text="Correo: " style="position:absolute; top:452px; left:577px;"></asp:Label>
                <asp:TextBox ID="txtCorreo" runat="server" style="position:absolute; top:450px; left:680px;"></asp:TextBox>
            </div>

            <div id="agTipo">
                <asp:Label ID="lblTipo" runat="server" Text="Tipo de usuario: " style="position:absolute; top:535px; left:504px;"></asp:Label>
                <asp:DropDownList ID="cmbTipoUsuario" runat="server" style="padding-left:10px; position:absolute; top:535px; left:680px;">
                        <asp:ListItem>Administración</asp:ListItem>
                        <asp:ListItem>Ingresos</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Agentes</asp:ListItem>
                        <asp:ListItem>Calidad</asp:ListItem>
                        <asp:ListItem>Dirección</asp:ListItem>
                </asp:DropDownList>

            </div>

            <div id="agreContra">
                <asp:Label ID="lblContra" runat="server" Text="Contraseña: " style="position:absolute; top:620px; left:542px;"></asp:Label>
                <asp:TextBox ID="txtContra" runat="server" style="position:absolute; top:620px; left:680px;"></asp:TextBox>
             </div>
        
            <div id="btnAgre">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Height="60" Width="150" BackColor="#0066FF" ForeColor="White" onclick="btnAgegar_Click" 
                 style="position:absolute; top:710px; left:610px;"/>
            </div>

    </form>
       
    </div>

    <div id="footerAgreUsuario">
    <footer>
       <p>Turismo Creativo S.A. de C.V.</p>

    </footer>
    </div>
</body>
</html>

