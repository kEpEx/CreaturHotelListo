<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatosCalidad.aspx.cs" Inherits="CreaturDatos.MostrarDatosCalidad" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <title>Mostrar Datos</title>
    <link rel="stylesheet" type="text/css" href="css/Normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/mostrarAdministracion.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />

    <script>
        $(function () {
            $(".datepicker").datepicker();
        });
    </script>

</head>
<body>

    <div id="headerMosDatAdmin">
        <header>
            <h1>Mostrar Hoteles Calidad</h1>
        </header>
    </div>


    <div>
        <form runat="server">




            <div id="contFiltros">
                <asp:ImageButton ID="imgBtnHomeCal" runat="server" ImageUrl="~/img/btnLogout.png" Style="position: absolute; top: -224px; width: 60px; height: 60px; left: 1233px;" OnClick="imgBtnHome_Click" />
                <asp:Label ID="lblHomeAdmon" runat="server" Text="Cerrar Sesion" Style="position: absolute; top: -160px; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 12px; color: white; left: 1225px;"></asp:Label>

                <asp:Label ID="lblBuscarCal" runat="server" Text="Buscar huesped:" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 17px; left: 289px; width: 144px;"></asp:Label>
                <asp:Label ID="lblAgenteCal" runat="server" Text="Buscar agente:" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 75px; left: 289px; width: 144px;"></asp:Label>

                <asp:ImageButton ID="imgBtnBuscarCal" CssClass="botonRedondo" Style="height: 60px; width: 60px; margin-left: 30px; position: absolute; top: 31px; left: 621px;" runat="server" Text="A-Z" ImageUrl="~/img/buscarImg.png" />
                <asp:TextBox ID="tbBuscarCal" runat="server" Style="position: absolute; top: 21px; left: 440px;"></asp:TextBox>
                <asp:TextBox ID="tbBuscarAgenteCal" runat="server" Style="position: absolute; top: 78px; left: 440px;"></asp:TextBox>


                <asp:Label ID="lblFiltrarFecha" runat="server" Text="Filtrar fecha de creación (mm/dd/aa)" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; font-weight: 600; position: absolute; top: 0px; left: 763px; width: 333px;"></asp:Label>

                <asp:ImageButton ID="ImgbtnFiltrarFechaCal" CssClass="botonRedondo" Style="height: 60px; width: 60px; margin-left: 50px; position: absolute; top: 27px; left: 1186px;"
                    runat="server" ImageUrl="~/img/calendarImg.png" />

                <asp:Label ID="lblDelCal" runat="server" Text="Del" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 46px; left: 763px;"></asp:Label>
                <asp:TextBox ID="tbFecha1Cal" runat="server" CssClass="datepicker" Style="position: absolute; top: 49px; left: 800px;" placeholder="Coloca una fecha"></asp:TextBox>

                <asp:Label ID="lblFecha1Cal" runat="server" Text="Al" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 46px; left: 1003px;"></asp:Label>

                <asp:TextBox ID="tbFecha2Cal" runat="server" CssClass="datepicker" Style="position: absolute; top: 49px; left: 1026px;">08/31/2015</asp:TextBox>
            </div>

            <div id="tablaResult">
                <strong>

                    <asp:GridView ID="gvdC" runat="server" BackColor="White" BorderColor="#000066" BorderStyle="None" BorderWidth="1px" Width="10000px" Height="100px" PageSize="100" OnSelectedIndexChanged="gvDatosCal_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField SelectText="Editar" ShowSelectButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="FacturaProveedor" HeaderText="Factura Proveedor" SortExpression="FacturaProveedor" HeaderStyle-CssClass="colorAdministracion" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAdministracion"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ObservacionesAdministracion" HeaderText="Observaciones" SortExpression="ObservacionesAdministracion" HeaderStyle-CssClass="colorAdministracion" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAdministracion"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="NumFacturaCreatur" HeaderText="No. de factura CREATUR" SortExpression="NumFacturaCreatur" HeaderStyle-CssClass="colorIngresos" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorIngresos"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ObservacionIngreso" HeaderText="Observaciones" SortExpression="ObservacionIngreso" HeaderStyle-CssClass="colorIngresos" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorIngresos"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="FacturaEfectiva" HeaderText="Factura Efectiva" SortExpression="FacturaEfectiva" HeaderStyle-CssClass="colorAdmin" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAdmin"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Agente" HeaderText="Agente" SortExpression="Agente" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="FechaCreacion" HeaderText="Fecha de creacion" SortExpression="FechaCreacion" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Refacturacion" HeaderText="Refacturación" SortExpression="Refacturacion" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="HK" HeaderText="HK" SortExpression="HK" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="GK" HeaderText="GK" SortExpression="GK" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Huesped" HeaderText="Huesped" SortExpression="Huesped" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Hotel" HeaderText="Hotel" SortExpression="Hotel" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="CiudadUbicacionHotel" HeaderText="Ciudad de ubicación del hotel" SortExpression="CiudadUbicacionHotel" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Confirmacion" HeaderText="Confirmación" SortExpression="Confirmacion" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="FechaCheckIn" HeaderText="Fecha de Check In" SortExpression="FechaCheckIn" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="FechaCheckOut" HeaderText="Fecha de Check Out" SortExpression="FechaCheckOut" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="NumeroNoches" HeaderText="Numero de noches" SortExpression="NumeroNoches" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="TarifaBaseConImpIncluidos" HeaderText="Tarifa base con impuestos incluídos" SortExpression="TarifaBaseConImpIncluidos" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="TotalConImpIncluidos" HeaderText="Total con impuestos incluídos" SortExpression="TotalConImpIncluidos" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="TotalTarifaBaseHotel" HeaderText="Total tarifa base hotel" SortExpression="TotalTarifaBaseHotel" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ISH" HeaderText="ISH" SortExpression="ISH" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="TipoMoneda" HeaderText="Tipo de Moneda" SortExpression="TipoMoneda" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="PorcenGananSobreTotalImpuestosInclud" HeaderText="% Ganancia sobre total de impuestos incluídos" SortExpression="PorcenGananSobreTotalImpuestosInclud" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:0.00}%">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ImporteGanancia" HeaderText="Importe de ganancia" SortExpression="ImporteGanancia" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ServiciosAdicionales" HeaderText="Servicios Adicionales" SortExpression="ServiciosAdicionales" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="CargoServicio" HeaderText="Cargo por Servicio" SortExpression="CargoServicio" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ImporteServicioAdicional" HeaderText="Importe de servicios adicionales" SortExpression="ImporteServicioAdicional" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="PorcenGananciaSobreServAdicional" HeaderText="% de ganancia sobre servicios adicionales" SortExpression="PorcenGananciaSobreServAdicional" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:0.00}%">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ImporteGananciaSobreServicioAdicional" HeaderText="importe de ganancia sobre servicios adicionales" SortExpression="ImporteGananciaSobreServicioAdicional" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="TotalFacHospedaje" HeaderText="Total Factura Hospedaje" SortExpression="TotalFacHospedaje" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="FormaPago" HeaderText="Forma de Pago" SortExpression="FormaPago" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="TipoTarifa" HeaderText="Tipo de tarifa" SortExpression="TipoTarifa" HeaderStyle-CssClass="colorAgentes" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorAgentes"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="NumRechazadosDeTarjetas" HeaderText="No. rechazados de tarjetas" SortExpression="NumRechazadosDeTarjetas" HeaderStyle-CssClass="colorCalidad" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorCalidad"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ReservaEfectiva" HeaderText="Reserva Efectiva" SortExpression="ReservaEfectiva" HeaderStyle-CssClass="colorDireccion" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorDireccion"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ImporteCobrarHtl" HeaderText="Importe a Cobrar Htl" SortExpression="ImporteCobrarHtl" HeaderStyle-CssClass="colorDireccion" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorDireccion"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="FOPFinal" HeaderText="FOPFinal" SortExpression="FOP Final" HeaderStyle-CssClass="colorDireccion" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorDireccion"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ObservacionDireccion" HeaderText="Observaciones" SortExpression="ObservacionDireccion" HeaderStyle-CssClass="colorDireccion" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="colorDireccion"></HeaderStyle>
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#0066FF" ForeColor="White" CssClass="FixedHeader" />
                    </asp:GridView>

                </strong>

            </div>

        </form>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCreaturHotelConnectionString3 %>"
        SelectCommand="SELECT * FROM [tblDatos] WHERE ([Agente] LIKE '%' + @Agente + '%') AND ([Huesped] LIKE '%' + @Huesped + '%') AND ([FechaCreacion] >= @fecha1 AND [FechaCreacion] <= @fecha2)" CancelSelectOnNullParameter="False">


        <SelectParameters>
            <asp:ControlParameter ControlID="tbBuscarAgenteCal" Name="Agente" PropertyName="Text" Type="String" ConvertEmptyStringToNull="False" />
            <asp:ControlParameter ControlID="tbBuscarCal" Name="Huesped" PropertyName="Text" Type="String" ConvertEmptyStringToNull="False" />
            <asp:ControlParameter ControlID="tbFecha1Cal" Name="fecha1" PropertyName="Text" Type="String" ConvertEmptyStringToNull="False" />
            <asp:ControlParameter ControlID="tbFecha2Cal" Name="fecha2" PropertyName="Text" Type="String" ConvertEmptyStringToNull="False" />
        </SelectParameters>

    </asp:SqlDataSource>

</body>
</html>
