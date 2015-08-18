<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Boleto.aspx.cs" Inherits="CreaturDatos.Boleto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Boleto</title>
    <link rel="stylesheet" type="text/css" href="css/BoletoEstilo.css" />
    <link rel="stylesheet" type="text/css" href="css/Normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/ImprimirBoleto.css" media="print" />

    <%--<script type="text/javascript">
        function imprSelec(boleto)
        {
            var ficha = document.getElementById(boleto); var ventimp = window.open(' ', 'popimpr');
            ventimp.document.write(ficha.innerHTML); ventimp.document.close(); ventimp.print(); ventimp.close();
        }
    </script>--%>
</head>
<body>


    <form id="form1" runat="server">
        <asp:ImageButton ID="imgBtnHome" runat="server" ImageUrl="~/img/homebtn.png" Style="position: absolute; top: 8px; width: 60px; height: 60px; left: 1177px;" OnClick="imgBtnHome_Click" />


        <%--   <asp:ImageButton ID="btnImprimirEsp" runat="server" ImageUrl="~/img/imprimirBtn.png" Style="position: absolute; top: 1010px; width: 70px; height: 70px; left: 653px;" onclick="btnImprimirEsp_Click"/>--%>

        <button onclick="window.print();">Generar</button>

        <div id="boletoGeneral">
            <div id="divImagenes">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Creaturlogo.png" Style="width: 133px; height: 62px; position: absolute; top: 32px; left: 19px;" />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/amex.jpg" Style="width: 80px; height: 80px; position: absolute; left: 174px; top: 25px;" />

                <asp:Label ID="lblTuris1" runat="server" Text="Turismo Creativo SA de CV" Style="position: absolute; top: 10px; left: 291px; font-size: 13px;"></asp:Label>
                <asp:Label ID="lblTuris2" runat="server" Text="Av Polo Francisco Javier Mina B102" Style="position: absolute; top: 35px; left: 268px; font-size: 13px;"></asp:Label>
                <asp:Label ID="lblTuris3" runat="server" Text="Col. Casa Blanca CP 86060" Style="position: absolute; top: 54px; left: 291px; font-size: 13px;"></asp:Label>
                <asp:Label ID="lblTuris4" runat="server" Text="Villahermosa Tabasco México" Style="position: absolute; top: 71px; left: 291px; font-size: 13px;"></asp:Label>
                <asp:Label ID="lblTuris5" runat="server" Text="Tels: (993) 316-3861 // 01800-467-2253" Style="position: absolute; top: 89px; left: 264px; font-size: 13px;"></asp:Label>
            </div>

            <div id="voucherDiv">

                <asp:Label ID="lblVoucher" runat="server" Text="Voucher de servicio" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 500px; text-align: center;"></asp:Label>

            </div>

            <div id="FechaCreacionDiv">
                <asp:Label ID="lblFechaCrea" runat="server" Text="Fecha" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 153px; text-align: left;"></asp:Label>
                <asp:Label ID="lblFechaDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 0px; left: 285px; font-size: 13px; width: 153px; text-align: left;"></asp:Label>
            </div>

            <div id="expedienteDiv">
                <asp:Label ID="lblExpediente" runat="server" Text="Expediente" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 153px; text-align: left;"></asp:Label>
                <asp:Label ID="lblExpeDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 0px; left: 285px; font-size: 13px; width: 153px; text-align: left;"></asp:Label>
            </div>

            <div id="operadorDiv">
                <asp:Label ID="lblOperador" runat="server" Text="Operador" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 250px; text-align: center;"></asp:Label>
                <asp:Label ID="lblTurCrea" runat="server" Text="Turismo Creativo SA de CV" Font-Bold="True" Style="position: absolute; top: 0px; left: 250px; font-size: 13px; background: gray; width: 250px; text-align: center;"></asp:Label>
                <asp:Label ID="lblNombreHotelDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 27px; left: 0px; font-size: 13px; width: 500px; text-align: center;"></asp:Label>
                <asp:Label ID="lbldirecDato" runat="server" Text="" Style="position: absolute; top: 55px; left: 0px; font-size: 13px; width: 500px; text-align: center;"></asp:Label>
                <asp:Label ID="lblCiudadDato" runat="server" Text="" Style="position: absolute; top: 74px; left: 0px; font-size: 13px; width: 500px; text-align: center;"></asp:Label>
                <asp:Label ID="lblTelDato" runat="server" Text="" Style="position: absolute; top: 95px; left: 0px; font-size: 13px; width: 500px; text-align: center;"></asp:Label>
            </div>

            <div id="nombreHuespedDiv">
                <asp:Label ID="lblNomHuesped" runat="server" Text="Nombre" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 500px; text-align: center;"></asp:Label>
                <asp:Label ID="lblHuespedDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 50px; left: 0px; font-size: 13px; width: 500px; text-align: center;"></asp:Label>
            </div>

            <div id="llegadaDiv">
                <asp:Label ID="Label1" runat="server" Text="Llegada" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 200px; text-align: center;"></asp:Label>
                <asp:Label ID="lblFechaLlegadaDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 20px; left: 0px; font-size: 13px; width: 200px; text-align: center;"></asp:Label>
            </div>

            <div id="salidaDiv">
                <asp:Label ID="lblSalida" runat="server" Text="Salida" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 200px; text-align: center;"></asp:Label>
                <asp:Label ID="lblFechaSalidaDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 20px; left: 0px; font-size: 13px; width: 200px; text-align: center;"></asp:Label>
            </div>

            <div id="pasajeroDiv">
                <asp:Label ID="lblPasa" runat="server" Text="No Pax" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 200px; text-align: center;"></asp:Label>
                <asp:Label ID="lblPaxDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 20px; left: 0px; font-size: 13px; width: 200px; text-align: center;"></asp:Label>
            </div>

            <div id="claveDiv">
                <asp:Label ID="lblClave" runat="server" Text="Clave" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 200px; text-align: center;"></asp:Label>
                <asp:Label ID="lblconDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 20px; left: 0px; font-size: 13px; width: 200px; text-align: center;"></asp:Label>
            </div>

            <div id="serivicioDiv">
                <asp:Label ID="lblServicio" runat="server" Text="Servicio" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 200px; text-align: center;"></asp:Label>
                <asp:Label ID="lblServDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 20px; left: 0px; font-size: 13px; width: 200px; text-align: center;"></asp:Label>
            </div>

            <div id="alojamientoDiv">
                <asp:Label ID="lblAlojamiento" runat="server" Text="Favor de proporcionar alojamiento y/o servicios solicitados" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 598px; text-align: center;"></asp:Label>
                <asp:Label ID="lblCupCub" runat="server" Text="CUPÓN CUBRE" Font-Bold="True" Style="position: absolute; top: 40px; left: 40px; font-size: 12px; width: 100px; text-align: center;"></asp:Label>
                <asp:Label ID="lblNocheDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 39px; left: 48px; font-size: 13px; width: 200px; text-align: center;"></asp:Label>
                <asp:Label ID="lblEnUnHab" runat="server" Text="NOCHES DE HOSPEDAJE EN UNA HABITACIÓN" Font-Bold="True" Style="position: absolute; top: 40px; left: 162px; font-size: 12px; width: 280px; text-align: center;"></asp:Label>
                <asp:Label ID="lblHabDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 39px; left: 375px; font-size: 13px; width: 200px; text-align: center;"></asp:Label>
                <asp:Label ID="lblEspHabDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 60px; left: -1px; font-size: 13px; width: 600px; text-align: center;"></asp:Label>
                <asp:Label ID="lblResPag" runat="server" Text="Reservado y Pagado por TURISMO CREATIVO SA de CV" Font-Bold="True" Style="position: absolute; top: 90px; left: -1px; font-size: 13px; width: 600px; text-align: center;"></asp:Label>
                <asp:Label ID="lblAlgHot" runat="server" Text="Algunos hoteles podrían pedirles como política interna una tarjeta de crédito o depósitos para pagos de <br/> adicionales no cubiertos en este cupón" Style="position: absolute; top: 107px; left: -1px; font-size: 12px; width: 600px; text-align: center;"></asp:Label>
            </div>

            <div id="formaPagoDiv">
                <asp:Label ID="lblpago" runat="server" Text="Forma de pago" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 401px; text-align: center;"></asp:Label>
                <asp:Label ID="lblFormPagoDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 78px; left: 0px; font-size: 13px; width: 400px; text-align: center;"></asp:Label>
            </div>
            <asp:Label ID="lblCondiciones" runat="server" Text="CONDICIONES: Este cupón cubre solo los servicios descritos en el presente documento. Actúa unicamente como intermediario entre el proveedor de servicios y el cliente, ni Turismo Creativo ni sus
             filiales tendrán responsabilidad u obligación si estos proveedores de servicios incumplan con sus obligaciones, de mismo modo el cliente queda en conocimiento que no hay cambios o cancelaciones a la entrega de este cupón"
                Font-Bold="True" Style="position: absolute; top: 444px; left: 0px; font-size: 11px; background: gray; width: 1000px; text-align: left;"></asp:Label>

            <div id="duponResDiv">
                <asp:Label ID="lblCuponRes" runat="server" Text="Cupón de Reservación Garantizada" Font-Bold="True" Style="padding-top: 17px; padding-left: 85px; position: absolute; top: 0px; left: 0px; font-size: 20px; width: 401px; text-align: center;"></asp:Label>
            </div>

            <div id="agenteDiv">
                <asp:Label ID="lblAgente" runat="server" Text="Agente de viajes" Font-Bold="True" Style="position: absolute; top: 0px; left: 0px; font-size: 13px; background: gray; width: 401px; text-align: center;"></asp:Label>
                <asp:Label ID="lblAgenteDato" runat="server" Text="" Font-Bold="True" Style="position: absolute; top: 28px; left: 0px; font-size: 13px; width: 400px; text-align: center;"></asp:Label>
            </div>
            <asp:Label ID="lblPre" CssClass="lblPre" runat="server" Text="Preguntas o Soporte por favor contactenos <br/> Reservado y Pagado por TURISMO CREATIVO" Font-Bold="True" Style="padding-top: 17px; padding-left: 85px; position: absolute; top: 543px; left: 246px; font-size: 13px; width: 401px; text-align: center;"></asp:Label>

        </div>
        

        <asp:TextBox ID="tbIdBoleto" runat="server" Visible="False"></asp:TextBox>

    </form>



</body>
</html>
