<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuPrincipal.aspx.cs" Inherits="CreaturDatos.menuPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/menu.css"/>
    <link rel="stylesheet" type="text/css" href= "css/Normalize.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <title>Menú Admin</title>
</head>
<body>
    <header id="headAd">
        <h1>Menú Admin</h1>
    </header>

    <form id="conBot" runat="server">

    <div id="btnAgregarAdministracion">
         <asp:HyperLink ID="hplCerrarSesion" runat="server" style="position:absolute; color:white; width:100px; top:26px; width:97px; height:60px;
         left:1114px;" Font-Underline="True" NavigateUrl="~/Index.aspx">Cerrar sesión</asp:HyperLink>
        
        <asp:ImageButton ID="imgAddUsuario" runat="server" ImageUrl="~/img/AddUser.png" style="position:absolute; top:350px; width:120px; height:120px; left:333px;" OnClick="imgAddUsuario_Click"/>
        <asp:Label ID="lblAgregarUsuario" runat="server" Text="Agregar usuarios" style="position:absolute; top:480px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:24px; color:#1358AB; left:303px; " ></asp:Label>

        <asp:ImageButton ID="imgBtnVerUsuarios" runat="server" ImageUrl="~/img/verUser.png" style="position:absolute; top:350px; width:120px; height:120px; left:526px;" OnClick="imgBtnVerUsuarios_Click"/>
        <asp:Label ID="lblVerUsuario" runat="server" Text="Ver usuarios" style="position:absolute; top:480px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:24px; color:#1358AB; left:519px;" ></asp:Label>

        <asp:ImageButton ID="imgBtnAgreDatos" runat="server" ImageUrl="~/img/agreData.png" style="position:absolute; top:350px; width:120px; height:120px; left:723px;" OnClick="imgBtnAgreDatos_Click"/>
        <asp:Label ID="lblAgregarDatos" runat="server" Text="Agregar datos" style="position:absolute; top:480px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:24px; color:#1358AB; left:707px;" ></asp:Label>

        <asp:ImageButton ID="imgVerDatos" runat="server" ImageUrl="~/img/verData.png" style="position:absolute; top:350px; width:120px; height:120px; left:900px;" OnClick="imgVerDatos_Click"/>
        <asp:Label ID="lblVerDatos" runat="server" Text="Ver datos" style="position:absolute; top:480px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:24px; color:#1358AB; left:908px;" ></asp:Label>

    </div>
        


    </form>


    <div id="footMenu">
        <footer>
            <p>Turismo Creativo S.A. de C.V.</p>
        </footer>
    </div>
    

</body>
</html>
