<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarDatosAd.aspx.cs" Inherits="CreaturDatos.AgregarDatosAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <title>Agregar hoteles</title>
    <link rel="stylesheet" type="text/css" href="css/AgreDatosEstilo.css"/>
    <link rel="stylesheet" type="text/css" href="css/Normalize.css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css"/>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script>
  $(function() {
    $( ".datepicker" ).datepicker();
  });
  </script>

</head>
<body>

    
    <header id="HeaderDatos">
        
        <h1 style="font-size:84px; color:white; margin-top:108px;">Modificar hotel</h1>
       
    </header>


    <div>
        <%--Comienza el formulario--%>
        <form runat="server">

            <asp:ImageButton ID="imgBtnHome" runat="server" ImageUrl="~/img/homebtn.png" style="position:absolute; top:8px; width:60px; height:60px; left:1200px;" OnClick="imgBtnHome_Click"/>
            <asp:Label ID="lblHome" runat="server" Text="Inicio" style="position:absolute; top:70px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size:12px; color:white; left:1216px;" ></asp:Label>
               
           <%--Contenedor que almacena los datos de administración--%>
            <div id="usoAdministracion">
                <%--Titulo administracion--%>
                <asp:Label ID="lblTituloAdministracion" runat="server" Text="Administración" style="font-size:30px; font-weight:800; padding-left:20px;"></asp:Label>
                <%--div que almacena label y textbox de factura proveedor--%>
                <div id="facturProov">
                    <asp:Label ID="lblFacturProveedor" runat="server" Text="Factura proveedor: "></asp:Label>
                    <asp:TextBox ID="tbFactProveedor" runat="server"></asp:TextBox>
                </div>

                <%--div que almacena label y textbox de obervacion --%>
                <div id="obserAdministracion">
                    <asp:Label ID="lblObservacion" runat="server" Text="Observaciones: "></asp:Label>
                    <asp:TextBox ID="tbObserAdministracion" runat="server" TextMode="MultiLine" style="max-height:54px; max-width:373px;"></asp:TextBox>
                </div>
                <%--Termina Div Contenedor datos de administracion--%>
            </div>

            <%--Contenedor que almacena los datos de Ingresos--%>
            <div id="usoIngresos">

                 <%--Titulo administracion--%>
                <asp:Label ID="lblIngresos" runat="server" Text="Ingresos" style="font-size:30px; font-weight:800; padding-left:20px;"></asp:Label>

                <%--div que almacena label y textbox de No. Factura Creatur--%>
                <div id="facCreat">
                    <asp:Label ID="lblFacCrea" runat="server" Text="No. de factura Creatur: "></asp:Label>
                    <asp:TextBox ID="tbFacCreatur" runat="server"></asp:TextBox>
                </div>

                <%--div que almacena label y textbox de observacion Ingresos--%>
                <div id="obIngre">
                    <asp:Label ID="lblObserIngresos" runat="server" Text="Observaciones: "></asp:Label>
                    <asp:TextBox ID="tbObserIngresos" runat="server" TextMode="MultiLine" style="max-height:54px; max-width:373px;"></asp:TextBox>
                </div>
                 <%--Termina Div Contenedor datos de Ingresos--%>
            </div>

            <%--Contenedor que almacena los datos de admin--%>
            <div id="usoAdmin">
                <%--Titulo de admin--%>
                <asp:Label ID="lblAdmin" runat="server" Text="Admin" style="font-size:30px; font-weight:800; padding-left:20px;"></asp:Label>
                <%--Contenedor de factura efectiva--%>
                <div id="facEfectiva">
                    <asp:Label ID="lblFacEf" runat="server" Text="Factura efectiva: "></asp:Label>
                    <asp:DropDownList ID="cmbFacEfectivo" runat="server" style="padding-left:10px; position:absolute; top:120px; left:80px;">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>

            <%--Contenedor que almacena los datos de agentes--%>
            <div id="usoAgentes">

                 <%--Titulo agentes--%>
                <asp:Label ID="lblTitAgente" runat="server" Text="Agentes" style="font-size:30px; font-weight:800; padding-left:20px;"></asp:Label>


                <%--div que almacena label y textbox de Nombre de agente--%>
                <div id="nomAgen">
                    <asp:Label ID="lblNombreAgente" runat="server" Text="Nombre agente: " style="position:absolute; left:45px;"></asp:Label>
                
                    <asp:Label ID="lblFechCre" runat="server" Text="Fecha de creación: " style="position:absolute; left:320px; top:72px;"></asp:Label>
                    <asp:TextBox ID="tbFechaCreacion" CssClass="datepicker" runat="server" style="position:absolute; left:460px; width: 140px;"></asp:TextBox>

                    <asp:Label ID="lblRefacturacion" runat="server" Text="Refacturación: " style="position:absolute; left:640px; top:72px; "></asp:Label>
                    <asp:DropDownList ID="cmbRefac" runat="server" style="width: 140px; position:absolute; left:750px; top:70px;">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="lblHk" runat="server" Text="HK:" style="left:965px; top:72px; position:absolute;" ></asp:Label>
                    <asp:TextBox ID="tbHk" runat="server" style="width: 140px; position:absolute; left:1000px;"></asp:TextBox>

                    <asp:DropDownList ID="cmbNombreAgente" runat="server" DataSourceID="SqlDataSource1" style="width:140px; left:164px; position:absolute;" DataTextField="Nombre" DataValueField="Nombre">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCreaturHotelConnectionString3 %>" SelectCommand="SELECT [Nombre] FROM [tblUsuarios] WHERE ([TipoUsuario] = @TipoUsuario)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="Agentes" Name="TipoUsuario" QueryStringField="Agentes" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>



                <div id="gkDiv">
                    <asp:Label ID="lblGk" runat="server" Text="GK: " style="position:absolute; top:175px; left:130px;"></asp:Label>
                    <asp:TextBox ID="tbGk" runat="server" style="position:absolute; width:140px; left:164px; top:173px;"></asp:TextBox>
                    <asp:Label ID="lblHuesped" runat="server" Text="Huesped: " style="position:absolute; left:380px; top:175px;"></asp:Label>
                    <asp:TextBox ID="tbHuesped" runat="server" style="position:absolute; left:460px; width:140px; top:173px;"></asp:TextBox>
                    <asp:Label ID="lblEmpresa" runat="server" Text="Empresa: " style="position:absolute; left:674px; top:175px;"></asp:Label>
                    <asp:TextBox ID="tbEmpresa" runat="server" style="width: 140px; position:absolute; left:750px; top:173px;"></asp:TextBox>
                    <asp:Label ID="lblHotel" runat="server" Text="Hotel:" style="position:absolute; top:175px; left:950px;"></asp:Label>
                    <asp:TextBox ID="tbHotel" runat="server" style="width: 140px; position:absolute; left:1000px; top:173px;"></asp:TextBox>
                </div>


                <div id="cdUbiHotel">
                    <asp:Label ID="lblCdHotel" runat="server" Text="Cd. ubicación</br> del hotel: " style="position:absolute; top: 260px; left:60px;"></asp:Label>
                    <asp:TextBox ID="tbCdHotel" runat="server" style="position:absolute; left:162px; top:280px; width:140px;"></asp:TextBox>
                
                    <asp:Label ID="lblconfir" runat="server" Text="Confirmación: " style="position:absolute; left:350px; top:285px;"></asp:Label>
                    <asp:TextBox ID="tbConfir" runat="server" style="width:140px; position:absolute; left:460px; top:280px;" ></asp:TextBox>

                    <asp:Label ID="lblFechaCheIn" runat="server" Text="Fecha de</br> Check In: " style="position:absolute; top:268px; left:675px;"></asp:Label>
                    <asp:TextBox ID="tbFechaCheIn" CssClass="datepicker" runat="server" style="width: 140px; position:absolute; left:750px; top:280px;"></asp:TextBox>

                    <asp:Label ID="lblFechaCheOut" runat="server" Text="Fecha de </br> Check Out: " style="position:absolute; top:267px; left:915px;"></asp:Label>
                    <asp:TextBox ID="tbFechaCheOut" CssClass="datepicker" runat="server" style="width: 140px; position:absolute; left:1000px; top:280px;"></asp:TextBox>
                </div>


                <div id="numNoches">
                    <asp:Label ID="lblNoche" runat="server" Text="Número de</br> noches: " style="left:70px; position:absolute; top:375px;"></asp:Label>
                    <asp:TextBox ID="tbNoche" runat="server" style="width: 140px; position:absolute; left:162px; top:383px;">0</asp:TextBox>
                
                    <asp:Label ID="lblTariBasImpIncl" runat="server" Text="Tarifa base </br>con impuestos </br>incluídos: " style="position:absolute; top:363px; left:350px;"></asp:Label>
                    <asp:TextBox ID="tbTariBasImpuesInclud" runat="server" style="width:140px; position:absolute; top:383px; left:460px;" >0</asp:TextBox>

                    <asp:Label ID="lblTotBaseConImpInclud" runat="server" Text="Total con </br>impuestos </br>incluídos: " style="width: 140px; position:absolute; top:360px; left:667px;"></asp:Label>
                    <asp:TextBox ID="tbTotConImpInclud" runat="server" style="width: 140px; position:absolute; left:750px; top:383px;" ReadOnly="True">0</asp:TextBox>

                    <asp:Label ID="lblTotTariHotel" runat="server" Text="Total tarifa</br> base hotel: " style="position:absolute; top:367px; left:914px;"></asp:Label>
                    <asp:TextBox ID="tbTotTarifHotel" runat="server" style="width: 140px; position:absolute; left:1000px; top:383px;">0</asp:TextBox>
                </div>

                <div id="ishDiv">
                    <asp:Label ID="lblPorcenGanSobTotalImpuInclud" runat="server" Text="% de ganancia</br> sobre total</br> de impuestos </br>incluídos: " style="position:absolute; top:460px; left:50px;"></asp:Label>
                    <asp:TextBox ID="tbPorcenGanSobTotalImpuInclud" runat="server" style="width: 140px; position:absolute; top:490px; left:164px; ">0</asp:TextBox>
                
                    <asp:Label ID="lblTipoMoneda" runat="server" Text="Tipo moneda: " style="position:absolute; left:356px; top:493px;"></asp:Label>
                    <asp:TextBox ID="tbTipoMoneda" runat="server" style="width:140px; position:absolute; left:460px; top:490px;" ></asp:TextBox>

                    <asp:Label ID="lblIsh" runat="server" Text="ISH:" style="position:absolute; top:493px; left:710px;" ></asp:Label>
                     <asp:DropDownList ID="cmbISH" runat="server" style="width: 140px; position:absolute; left:750px; top:490px;">
                        <asp:ListItem>Aguascalientes 2.0%</asp:ListItem>
                        <asp:ListItem>Baja California 3.0%</asp:ListItem>
                        <asp:ListItem>Baja California Sur 3.0%</asp:ListItem>
                        <asp:ListItem>Campeche 2.0%</asp:ListItem>
                        <asp:ListItem>Coahuila 3.0%</asp:ListItem>
                        <asp:ListItem>Colima 3.0%</asp:ListItem>
                        <asp:ListItem>Chiapas 2.0%</asp:ListItem>
                        <asp:ListItem>Chihuahua 3.1%</asp:ListItem>
                        <asp:ListItem>Distrito Federal 3.0%</asp:ListItem>
                        <asp:ListItem>Durango 2.7%</asp:ListItem>
                        <asp:ListItem>Guanajuato 2.0%</asp:ListItem>
                        <asp:ListItem>Guerrero 3.0%</asp:ListItem>
                        <asp:ListItem>Hidalgo 2.6%</asp:ListItem>
                        <asp:ListItem>Jalisco 3.0%</asp:ListItem>
                        <asp:ListItem>Estado de México 4.0%</asp:ListItem>
                        <asp:ListItem>Michoacán 2.0%</asp:ListItem>
                        <asp:ListItem>Morelos 2.5%</asp:ListItem>
                        <asp:ListItem>Nayarit 2.5%</asp:ListItem>
                        <asp:ListItem>Nuevo León 2.0%</asp:ListItem>
                        <asp:ListItem>Oaxaca 3.0%</asp:ListItem>
                        <asp:ListItem>Puebla 0.0%</asp:ListItem>
                        <asp:ListItem>Querétaro 2.5%</asp:ListItem>
                        <asp:ListItem>Quintana Roo 3.0%</asp:ListItem>
                        <asp:ListItem>San Luis Potosí 3.0%</asp:ListItem>
                        <asp:ListItem>Sinaloa 3.0%</asp:ListItem>
                        <asp:ListItem>Sonora 2.0%</asp:ListItem>
                        <asp:ListItem>Tabasco 2.0%</asp:ListItem>
                        <asp:ListItem>Tamaulipas 0.0%</asp:ListItem>
                        <asp:ListItem>Tlaxcala 2.0%</asp:ListItem>
                        <asp:ListItem>Veracruz 2.3%</asp:ListItem>
                        <asp:ListItem>Yucatán 3.0%</asp:ListItem>
                        <asp:ListItem>Zacatecas 2.0%</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="lblImporteGanancia" runat="server" Text="Importe de </br> ganancia:" style="position:absolute; left:913px; top:481px; " ></asp:Label>
                    <asp:TextBox ID="tbImporteGanancia" runat="server" style="width: 140px; position:absolute; left:1000px; top:490px;">0</asp:TextBox>
                </div>
                
                <div id="serAdicio">
                    <asp:Label ID="lblServicioAdiconal" runat="server" Text="Servicios </br>adicionales: " style="position:absolute; right:1059px; top:600px;"></asp:Label>
                    <asp:DropDownList ID="cmbServiAdicionales" runat="server" style="position:absolute; width:140px; left:164px; top:604px;">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                
                    <asp:Label ID="lblPorGananSerAdici" runat="server" Text="% de ganancia </br>sobre servicios</br>adicionales: " style="position:absolute; left:340px; top:583px;"></asp:Label>
                    <asp:TextBox ID="tbPorGananSerAdici" runat="server" style="width:140px; position:absolute; top:600px; left:460px;" >0</asp:TextBox>

                    <asp:Label ID="lblImporteServAdic" runat="server" Text="Importe de </br>servicios </br> adicionales: " 
                    style="position:absolute; top:580px; left:655px;"></asp:Label>
                    <asp:TextBox ID="tbImporteServAdicionales" runat="server" style="width: 140px; position:absolute; top:600px; left:750px;">0</asp:TextBox>

                    <asp:Label ID="lblCargoServicio" runat="server" Text="Cargo por</br> servicio: " style="position:absolute; left:920px; top:590px; " ></asp:Label>
                    <asp:TextBox ID="tbCargoServicio" runat="server" style="width: 140px; position:absolute; left:1000px; top:600px;">0</asp:TextBox>
                </div>

                <div id="imporGanancia">
                    <asp:Label ID="lblImporGanan" runat="server" Text="Importe de </br>ganancia sobre</br> servicios adicionales: " style="position:absolute; left:12px; top:694px;"></asp:Label>
                    <asp:TextBox ID="tbImporGanan" runat="server" style="width: 140px; top:710px; left:164px; position:absolute;">0</asp:TextBox>
                
                    <asp:Label ID="lblTotFactuHospedaje" runat="server" Text="Total factura </br>hospedaje: " style="position:absolute; top:700px; left:358px;"></asp:Label>
                    <asp:TextBox ID="tbTotFactuHospedaje" runat="server" style="width:140px; position:absolute; top:710px; left:460px;" >0</asp:TextBox>

                    <asp:Label ID="lblForPagoTarje" runat="server" Text="Formato de pago</br> (Tarjeta Creatur-Proveedor): " style="width: 140px; position:absolute; top:690px; left:620px;"></asp:Label>
                    <asp:TextBox ID="tbForPagoTarje" runat="server" style="width: 140px; position:absolute; left:750px; top:710px;"></asp:TextBox>

                    <asp:Label ID="lblTipoTarifa" runat="server" Text="Tipo de</br> tarifa: " style="position:absolute; top:705px; left:935px;"></asp:Label>
                    <asp:TextBox ID="tbTipoTarifa" runat="server" style="width: 140px; position:absolute; left:1000px; top:710px;"></asp:TextBox>
                </div>

            </div>

            <div id="usoCali">
                <%--Titulo de admin--%>
                <asp:Label ID="lblCali" runat="server" Text="Calidad" style="font-size:30px; font-weight:800; padding-left:20px;"></asp:Label>
                <%--Contenedor de factura efectiva--%>
                <div id="numRechTarjetas">
                    <asp:Label ID="lblNumTarRech" runat="server" Text="No. Rechazados de tarjeta: "></asp:Label>
                    <asp:TextBox ID="tbNumTarRech" runat="server" style="position:absolute; left:25px; top:151px; width:150px;"></asp:TextBox>
                </div>

            </div>

            <div id="usoDireccionGen">
                <%--Titulo de admin--%>
                <asp:Label ID="lblDirecc" runat="server" Text="Dirección General" style="font-size:30px; font-weight:800; padding-left:20px;"></asp:Label>
                <%--Contenedor de factura efectiva--%>
                <div id="resEfectiva">

                    <asp:Label ID="lblResEfectiva" runat="server" Text="Reserva efectiva: "></asp:Label>
                    <asp:TextBox ID="tbResEfectiva" runat="server" ></asp:TextBox>

                    <asp:Label ID="lblImpoCobrarHtl" runat="server" Text="Importe a cobrar HTL: "></asp:Label>
                    <asp:TextBox ID="tbImpoCobrarHtl" runat="server" ></asp:TextBox>

                </div>

                 <div id="fopFin">

                    <asp:Label ID="lblFopFinal" runat="server" Text="FOP Final: "></asp:Label>
                    <asp:TextBox ID="tbFopFinal" runat="server" style=""></asp:TextBox>

                    <asp:Label ID="lblObserDirec" runat="server" Text="Observaciones: " style="padding-left:52px;"></asp:Label>
                    <asp:TextBox ID="tbObserDirec" runat="server" TextMode="MultiLine" style="max-height:54px; max-width:373px;"></asp:TextBox>

                </div>

            </div>

            <div id="DivBtn">
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" style="margin-top:480px; margin-left:672px;" BackColor="#0066FF" Font-Bold="True" ForeColor="White" Height="100px" Width="300px" />
                <asp:TextBox ID="tbIdModificar" runat="server" Visible="False"></asp:TextBox>
            </div>

           
        </form>
    </div>


    <div id="footAgreDatos">
        <footer>
            <p>Turismo Creativo S.A. de C.V.</p>
        </footer>
    </div>
    
</body>
</html>

