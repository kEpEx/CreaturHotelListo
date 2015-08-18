<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdFormBoleto.aspx.cs" Inherits="CreaturDatos.AdFormBoleto" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <title>Generar cupon</title>
    <link rel="stylesheet" type="text/css" href="css/AgreDatosEstilo.css"/>
    <link rel="stylesheet" type="text/css" href="css/Normalize.css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css"/>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script>
        $(function () {
            $(".datepicker").datepicker();
        });
  </script>

    <style type="text/css">
        .auto-style1 {
            right: 771px;
        }
    </style>

</head>
<body>

    
    <header id="HeaderDatos">
        
        <h1 style="font-size:84px; color:white; margin-top:108px;">Generar boleto</h1>
       
    </header>

    <div>
        <%--Comienza el formulario--%>
        <form runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <asp:ImageButton ID="imgBtnHome" runat="server" ImageUrl="~/img/homebtn.png" style="position:absolute; top:8px; width:60px; height:60px; left:1177px;" OnClick="imgBtnHome_Click"/>
            <asp:Label ID="lblHome" runat="server" Text="Inicio" style="position:absolute; top:70px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size:12px; color:white; left:1193px;" ></asp:Label>
             
         
            <%--Contenedor que almacena los datos de agentes--%>
            <div id="usoAgentes" style="margin-top:-350px; height:252px;">

                 <%--Titulo agentes--%>
                <asp:Label ID="lblTitAgente" runat="server" Text="" style="font-size:30px; font-weight:800; padding-left:20px;"></asp:Label>

                <%--div que almacena label y textbox de Nombre de agente--%>
                <div id="nomAgen">
                    <asp:Label ID="lblDireccHotel" runat="server" Text="Direccion Hotel: " style="position:absolute; left:80px; top:74px;"></asp:Label>
                    <asp:TextBox ID="tbDireccHotel" runat="server" style="position:absolute; left:200px; top:70px; width:140px;"></asp:TextBox>

                    <asp:Label ID="lblNumTel" runat="server" Text="Número de teléfono:" style="position:absolute; left:405px; top:71px;"></asp:Label>
                    <asp:TextBox ID="tbNumTel" runat="server" style="position:absolute; left:560px; width: 140px;"></asp:TextBox>

                    <asp:Label ID="lblTipoServicio" runat="server" Text="Tipo de servicio: " style="position:absolute; left:770px; top:72px; "></asp:Label>
                    <asp:DropDownList ID="cmbTipoServicio" runat="server" style="width: 140px; position:absolute; left:910px; top:70px;">
                        <asp:ListItem>--</asp:ListItem>
                        <asp:ListItem>Nacional</asp:ListItem>
                        <asp:ListItem>Internacional</asp:ListItem>
                    </asp:DropDownList>

                    
                    
                </div>


                <div id="gkDiv">
                    <asp:Label ID="lblNumPersonas" runat="server" Text="Número de personas: " style="position:absolute; top:175px; left:44px;"></asp:Label>
                    <asp:TextBox ID="tbNumPersonas" runat="server" style="position:absolute; width:140px; left:200px; top:173px;"></asp:TextBox>
                    <asp:Label ID="lblTipoHaabitacion" runat="server" Text="Tipo de habitación: " style="position:absolute; left:417px; top:175px;"></asp:Label>
                    <asp:TextBox ID="tbTipoHaabitacion" runat="server" style="position:absolute; left:560px; width:140px; top:173px;"></asp:TextBox>
                    <asp:Label ID="lblDescipcionHabitacion" runat="server" Text="Descripción de habitación: " style="position:absolute; left:720px; top:175px;"></asp:Label>
                    <asp:TextBox ID="tbDescipcionHabitacion" runat="server" style="width: 140px; position:absolute; left:910px; top:173px;"></asp:TextBox>
                </div>

            </div>
            <div id="DivBtn" style="top:598px;">
                <asp:Button ID="btnGenerar" runat="server" Text="Generar boleto Español" style="margin-top:50px; margin-left:500px;" BackColor="#0066FF" Font-Bold="True" ForeColor="White" Height="100px" Width="300px" OnClick="btnGenerar_Click"  />
                <asp:Button ID="btnGenerarIng" runat="server" Text="Generar boleto Inglés" style="position:absolute; top:0px; margin-top:50px; margin-left:830px;" BackColor="Orange" Font-Bold="True" ForeColor="White" Height="100px" Width="300px" OnClick="btnGenerarIng_Click" />
                <asp:TextBox ID="tbIdBoleto" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="tbFechaCreacionAgente" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbGkDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbHotelDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbCdHotelDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbHuespedDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbFechaInDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbFechaOutDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbconfirDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbNocheDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbFormPagDato" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="tbAgenDato" runat="server" Visible="false"></asp:TextBox>

            </div>
   
     </form>      

         </div>
    <div id="footAgreDatos" style="margin-top:590px;">
        <footer>
            <p>Turismo Creativo S.A. de C.V.</p>
        </footer>
    </div>
    
</body>
</html>

