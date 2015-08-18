<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CreaturDatos.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/loginCreatur.css"/>
    <link rel="stylesheet" type="text/css" href="css/Normalize.css"/>
</head>
<body>

    <header id="headerLogin">
        <h1>Hoteles Creatur</h1>
    </header>

    <div id="divLogin">
        <form runat="server">
            
            <asp:TextBox ID="tbHidenName" runat="server" style="position:absolute; left:622px; top:536px;" Visible="false"></asp:TextBox>

            <asp:Image ID="imgLogo" runat="server" ImageUrl="~/images/logo.png" style=" position:absolute; top:330px; left:545px;" />
                <div id="user" style="padding-top:35px; padding-left:106px;" >
                     <asp:Image ID="imgUser" runat="server" ImageUrl="~/img/mailImg.png"  style="position:absolute; left:560px; top:523px;"/>
                     <asp:TextBox ID="tbUser" runat="server" style="position:absolute; left:622px; top:536px;" placeholder="Email"></asp:TextBox>
                </div>

                 <div id="pass" style="padding-top:5px; padding-left:106px;">
                     <asp:Image ID="imgPass" runat="server" ImageUrl="~/img/passIcon.png" style="position:absolute; left:560px; top:589px;"/>
                     <asp:TextBox ID="tbPass" runat="server" TextMode="Password" style="position:absolute; left:623px; top:600px;" placeholder="contraseña"></asp:TextBox>
                 </div>

                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" BackColor="#0033CC" ForeColor="White" Height="60px" Width="140px" style="position:absolute; top:665px; left:624px;" OnClick="btnEntrar_Click" />

            
             

            
             <asp:SqlDataSource ID="SqlDataSourceCreaturModel" runat="server" 
             ConnectionString="<%$ ConnectionStrings:DBCreaturHotelConnectionString3 %>"
             SelectCommand="SELECT * FROM [tblUsuarios] WHERE  ([Correo] AND [Contra] @user AND @contra)" CancelSelectOnNullParameter="False">
                 
               
                  <SelectParameters>
                     <asp:ControlParameter ControlID="tbUser" Name="user" PropertyName="Text"  Type="String" ConvertEmptyStringToNull="False" />
                 </SelectParameters>

                  <SelectParameters>
                     <asp:ControlParameter ControlID="tbPass" Name="contra" PropertyName="Text"  Type="String" ConvertEmptyStringToNull="False" />
                 </SelectParameters>
             
             </asp:SqlDataSource>

            
             

            
        </form>
    </div>
        <footer id="footerLogin">
            <p>Turismo Creativo S.A. de C.V.</p>
        </footer>
  
</body>
</html>
