<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatoAdmin.aspx.cs" Inherits="CreaturDatos.MostrarDatoAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <title>Mostrar hoteles Admin</title>
    <link rel="stylesheet" type="text/css" href="css/Normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/MostrarDatosAdmin.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="js/MooTools-Core-1.5.1.js"></script>
    <script>
        $(function () {
            $(".datepicker").datepicker();
        });
    </script>


    <%--<style type="text/css">
        .FixedHeader {
            position: fixed;
            font-weight: bold;
        }     
    </style>--%>
</head>
<body>

    <div id="headerMosDatAdmin">
        <header>
            <h1>Mostrar Hoteles Admin</h1>
        </header>
    </div>


    <div>
        <form runat="server">
           
            <div id="contFiltros" style="background: #808080;">

                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/homebtn.png" Style="position: absolute; top: -224px; width: 60px; height: 60px; left: 1219px;" OnClick="imgBtnHome_Click" />
                <asp:Label ID="Label1" runat="server" Text="Inicio" Style="position: absolute; top: -160px; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 12px; color: white; left: 1237px;"></asp:Label>

                <asp:Label ID="lblBuscar" runat="server" Text="Buscar huesped:" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 16px; left: 285px; width: 144px;"></asp:Label>
                <asp:Label ID="lblAgenteAdmin" runat="server" Text="Buscar agente:" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 71px; left: 300px; width: 144px;"></asp:Label>
                <asp:ImageButton ID="imgBtnExcel" CssClass="botonRedondo" Style="height: 60px; width: 60px; margin-left: 30px; position: absolute; top: 27px; left: 120px;" runat="server" ImageUrl="~/img/exportar.png" OnClick="imgBtnExcel_Click" />
                <asp:ImageButton ID="imgBtnBuscar" CssClass="botonRedondo" Style="height: 60px; width: 60px; margin-left: 30px; position: absolute; top: 27px; left: 620px;" runat="server" ImageUrl="~/img/buscarImg.png" />
                <asp:TextBox ID="tbBuscar" runat="server" Style="position: absolute; top: 20px; left: 440px;"></asp:TextBox>
                <asp:TextBox ID="tbBuscarAgenteAdmin" runat="server" Style="position: absolute; top: 75px; left: 440px;"></asp:TextBox>


                <asp:Label ID="lblFiltrarFecha" runat="server" Text="Filtrar fecha de creación (mm/dd/aa)" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; font-weight: 600; position: absolute; top: 0px; left: 763px; width: 333px;"></asp:Label>

                

                

                <asp:Label ID="lblDel" runat="server" Text="Del" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 46px; left: 745px;"></asp:Label>

                <asp:TextBox ID="tbFecha1" runat="server" CssClass="datepicker" Style="position: absolute; top: 49px; left: 779px;" Text="" placeholder="Coloca una fecha"></asp:TextBox>

                <asp:Label ID="lblFecha1" runat="server" Text="Al" Style="font-family: 'Segoe UI'; font-size: 20px; color: #71C4FF; position: absolute; top: 46px; left: 983px;"></asp:Label>

                <asp:TextBox ID="tbFecha2" runat="server" CssClass="datepicker" Style="position: absolute; top: 49px; left: 1010px;" Text="08/31/2015"></asp:TextBox>

                <asp:ImageButton ID="ImgbtnFiltrarFecha" CssClass="botonRedondo" Style="height: 60px; width: 60px; margin-left: 30px; position: absolute; top: 28px; left: 1191px;"
                    runat="server" ImageUrl="~/img/calendarImg.png" OnClick="ImgbtnFiltrarFecha_Click" />

            </div>

            <div id="tablaResult">

                        <asp:GridView ID="gvDatosAdmin" runat="server" AutoGenerateColumns="False" HeaderStyle-CssClass="FixedHeader" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="100px" Width="10000px" PageSize="100" OnSelectedIndexChanging="gvDatosAdmin_SelectedIndexChanging" OnSelectedIndexChanged="gvDatosAdmin_SelectedIndexChanged" OnRowCommand="gvDatosAdmin_RowCommand" OnRowUpdating="gvDatosAdmin_RowUpdating">
                            <Columns>
                                <asp:CommandField SelectText="Editar" ShowSelectButton="True" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="delete" runat="server" OnClientClick="return confirm('¿Desea eliminar el registro?');" CommandName="Delete">Eliminar</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="FacturaProveedor" HeaderText="FACTURA PROVEEDOR" SortExpression="FacturaProveedor" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ObservacionesAdministracion" HeaderText="OBSERVACIONES" SortExpression="ObservacionesAdministracion" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="NumFacturaCreatur" HeaderText="No. DE FACTURA CREATUR" SortExpression="NumFacturaCreatur" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ObservacionIngreso" HeaderText="OBSERVACIONES" SortExpression="ObservacionIngreso" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="FacturaEfectiva" HeaderText="FACTURA EFECTIVA" SortExpression="FacturaEfectiva" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Agente" HeaderText="AGENTE" SortExpression="Agente" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="FechaCreacion" HeaderText="FECHA DE CREACIÓN (mm/dd/aaaa)" SortExpression="FechaCreacion" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Refacturacion" HeaderText="REFACTURACIÓN" SortExpression="Refacturacion" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="HK" HeaderText="HK" SortExpression="HK" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="GK" HeaderText="GK" SortExpression="GK" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Huesped" HeaderText="HUESPED" SortExpression="Huesped" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Empresa" HeaderText="EMPRESA" SortExpression="Empresa" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Hotel" HeaderText="HOTEL" SortExpression="Hotel" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="CiudadUbicacionHotel" HeaderText="CIUDAD DE UBICACIÓN DEL HOTEL" SortExpression="CiudadUbicacionHotel" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Confirmacion" HeaderText="CONFIRMACIÓN" SortExpression="Confirmacion" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="FechaCheckIn" HeaderText="FECHA CHECK IN" SortExpression="FechaCheckIn" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="FechaCheckOut" HeaderText="FECHA CHECK OUT" SortExpression="FechaCheckOut" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="NumeroNoches" HeaderText="NÚMERO DE NOCHES" SortExpression="NumeroNoches" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="TarifaBaseConImpIncluidos" HeaderText="TFA.  BASE CON IMPUESTOS INCLUÍDOS" SortExpression="TarifaBaseConImpIncluidos" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="TotalConImpIncluidos" HeaderText="TOTAL CON IMPUESTOS INCLUÍDOS" SortExpression="TotalConImpIncluidos" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="TotalTarifaBaseHotel" HeaderText="TOTAL TARIFA BASE HOTEL" SortExpression="TotalTarifaBaseHotel" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ISH" HeaderText="ISH" SortExpression="ISH" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="TipoMoneda" HeaderText="TIPO DE MONEDA" SortExpression="TipoMoneda" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="PorcenGananSobreTotalImpuestosInclud" HeaderText="% DE GANANCIA SOBRE TOTAL CON IMPUESTOS INCLUÍDOS" SortExpression="PorcenGananSobreTotalImpuestosInclud" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:0.00}%">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ImporteGanancia" HeaderText="IMPORTE DE GANANCIA" SortExpression="ImporteGanancia" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ServiciosAdicionales" HeaderText="SERVICIOS ADICIONALES" SortExpression="ServiciosAdicionales" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="CargoServicio" HeaderText="CARGO POR SERVICIO" SortExpression="CargoServicio" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ImporteServicioAdicional" HeaderText="IMPORTE DE SERVICIOS ADICIONALES" SortExpression="ImporteServicioAdicional" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="PorcenGananciaSobreServAdicional" HeaderText="% DE GANANCIA SOBRE SERVICIOS ADICIONALES" SortExpression="PorcenGananciaSobreServAdicional" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:0.00}%">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ImporteGananciaSobreServicioAdicional" HeaderText="IMPORTE DE GANANCIA SOBRE SERVICIOS ADICIONALES" SortExpression="ImporteGananciaSobreServicioAdicional" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="TotalFacHospedaje" HeaderText="TOTAL FACTURA HOSPEDAJE" SortExpression="TotalFacHospedaje" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:C}">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="FormaPago" HeaderText="FORMA DE PAGO" SortExpression="FormaPago" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="TipoTarifa" HeaderText="TIPO DE TARIFA" SortExpression="TipoTarifa" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="NumRechazadosDeTarjetas" HeaderText="No. RECHAZADOS DE TARJETA" SortExpression="NumRechazadosDeTarjetas" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ReservaEfectiva" HeaderText="RESERVA EFECTIVA" SortExpression="ReservaEfectiva" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ImporteCobrarHtl" HeaderText="IMPORTE COBRAR HTL" SortExpression="ImporteCobrarHtl" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="FOPFinal" HeaderText="FOP FINAL" SortExpression="FOPFinal" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ObservacionDireccion" HeaderText="OBSERVACIONES" SortExpression="ObservacionDireccion" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#0066FF" ForeColor="White" CssClass="FixedHeader" />
                        </asp:GridView>
                    

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCreaturHotelConnectionString3 %>"
                    SelectCommand="SELECT * FROM [tblDatos] WHERE ([Agente] LIKE '%' + @Agente + '%') AND ([Huesped] LIKE '%' + @Huesped + '%') AND ([FechaCreacion] >= @fecha1 AND [FechaCreacion] <= @fecha2)" CancelSelectOnNullParameter="False"
                    UpdateCommand="UPDATE [tblDatos] SET [FacturaProveedor]=@facturaProveedor, [ObservacionesAdministracion]=@observacionesAdministracion,
                 [NumFacturaCreatur]=@NumFacturaCreatur, [ObservacionIngreso]=@ObservacionIngreso, [FacturaEfectiva]=@facturaEfectiva,
                 [Agente]=@agente, [FechaCreacion]=@fechaCreacion, [Refacturacion]=@refacturacion, [HK]=@hk, [GK]=@gk, [Huesped]=@huesped,
                 [Empresa]=@empresa, [Hotel]=@hotel, [CiudadUbicacionHotel]=@ciudadUbicacionHotel, [Confirmacion]=@confirmacion,
                 [FechaCheckIn]=@fechaCheckIn, [FechaCheckOut]=@fechaCheckOut, [NumeroNoches]=@numeroNoches, [TarifaBaseConImpIncluidos]=@tarifaBaseConImpIncluidos,
                 [TotalConImpIncluidos]=@totalConImpIncluidos, [TotalTarifaBaseHotel]=@totalTarifaBaseHotel, [ISH]=@ish, [TipoMoneda]=@tipoMoneda,
                 [PorcenGananSobreTotalImpuestosInclud]=@porcenGananSobreTotalImpuestosInclud, [ImporteGanancia]=@importeGanancia,
                 [ServiciosAdicionales]=@serviciosAdicionales, [CargoServicio]=@cargoServicio, [ImporteServicioAdicional]=@importeServicioAdicional,
                 [PorcenGananciaSobreServAdicional]=@porcenGananciaSobreServAdicional, [ImporteGananciaSobreServicioAdicional]=@importeGananciaSobreServicioAdicional,
                 [TotalFacHospedaje]=@totalFacHospedaje, [FormaPago]=@formaPago, [TipoTarifa]=@tipoTarifa, [NumRechazadosDeTarjetas]=@numRechazadosDeTarjetas,
                 [ReservaEfectiva]=@reservaEfectiva, [ImporteCobrarHtl]=@importeCobrarHtl, [FOPFinal]=@fopFinal, 
                 [ObservacionDireccion]=@observacionDireccion WHERE [Id]=@id"
                 DeleteCommand="DELETE FROM [tblDatos] WHERE [Id]=@id">

                <SelectParameters>
                        <asp:ControlParameter ControlID="tbBuscarAgenteAdmin" Name="Agente" PropertyName="Text" Type="String" ConvertEmptyStringToNull="False" />
                        <asp:ControlParameter ControlID="tbBuscar" Name="Huesped" PropertyName="Text" Type="String" ConvertEmptyStringToNull="False" />
                        <asp:ControlParameter ControlID="tbFecha1" Name="fecha1" DbType="String" PropertyName="Text" ConvertEmptyStringToNull="true" />
                        <asp:ControlParameter ControlID="tbFecha2" Name="fecha2" DbType="String" PropertyName="Text" ConvertEmptyStringToNull="true" />                                         
                    </SelectParameters>

                </asp:SqlDataSource>
          </div>   <%-- AND ([FechaCreacion] >= @fecha1 AND [FechaCreacion] <= @fecha2)--%>

        </form>

    </div>

</body>
</html>
