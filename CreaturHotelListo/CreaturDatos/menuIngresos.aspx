﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuIngresos.aspx.cs" Inherits="CreaturDatos.menuIngresos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel="stylesheet" type="text/css" href= "css/Normalize.css" />
    <link rel="stylesheet" type="text/css" href= "css/menuAdministracionEstilo.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <title>Menú Ingresos</title>
</head>
<body>
    <header id="headAd">
        <h1>Menú Ingresos</h1>
    </header>

    <form id="conBot" runat="server">

    <div id="btnAgregarAdministracion">
         
        <asp:ImageButton ID="imgCerrarSesionMenuIngreso" runat="server" ImageUrl="~/img/btnLogout.png" style="position:absolute; top:20px; width:60px; height:60px; left:1202px;" OnClick="imgCerrarSesionMenuIngreso_Click" />
        <asp:Label ID="LblCerrarMenuIngreso" runat="server" Text="Cerrar Sesión" style="position:absolute; top:83px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:12px; color:white; left:1198px;" ></asp:Label>

        <asp:ImageButton ID="imgBtnAgreDatos" runat="server" ImageUrl="~/img/agreData.png" style="position:absolute; top:350px; width:120px; height:120px; left:495px;" OnClick="imgBtnAgreDatos_Click"/>
        <asp:Label ID="lblAgregarDatos" runat="server" Text="Agregar hotel" style="position:absolute; top:480px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:24px; color:#1358AB; left:480px;" ></asp:Label>

        <asp:ImageButton ID="imgVerDatos" runat="server" ImageUrl="~/img/verData.png" style="position:absolute; top:350px; width:120px; height:120px; left:738px;" OnClick="imgVerDatos_Click"/>
        <asp:Label ID="lblVerDatos" runat="server" Text="Ver/modificar hoteles" style="position:absolute; top:480px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:24px; color:#1358AB; left:700px;" ></asp:Label>
    </div>
        
    </form>


    <div id="footMenu">
        <footer>
            <p>Turismo Creativo S.A. de C.V.</p>
        </footer>
    </div>
    

</body>
</html>

