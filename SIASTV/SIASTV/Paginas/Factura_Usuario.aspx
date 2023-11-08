<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index2.Master" CodeBehind="Factura_Usuario.aspx.vb" Inherits="SIASTV.Factura_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 134px;
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style6 {
            height: 6px;
            margin-left: 40px;
        }
        .auto-style7 {
            height: 13px;
        }
        .auto-style8 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #000000;
        }
    .nuevoEstilo1 {
        background-color: #C0C0C0;
    }
        .auto-style9 {
            width: 36px;
            height: 34px;
        }
        .nuevoEstilo2 {
            font-size: 10px;
        }
        .nuevoEstilo3 {
            font-size: 15px;
            font-weight: bold;
        }
        .nuevoEstilo4 {
            font-size: 12px;
        }
        .auto-style10 {
            width: 47px;
            height: 60px;
        }
        .auto-style11 {
            width: 8px;
        }
        .auto-style12 {
            width: 223px;
        }
        .auto-style13 {
            width: 226px;
        }
        .auto-style14 {
            width: 228px;
        }
        .auto-style15 {
            width: 229px;
        }
        .auto-style16 {
            width: 227px;
        }
        .nuevoEstilo5 {
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td colspan="4" style="text-align: center" class="nuevoEstilo5">ASOCIACION COMUNITARIA DE TELEVISION DE CUCAITA
                <br />
                &quot;ASOCUCAITA&quot;<br />
                Nit. 900416584-6<br />
                Resolución ANT 2205 de 2014</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="3" style="text-align: center" class="nuevoEstilo5">Resolucion DIAN N°.200000044515</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="5">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" rowspan="5"><div>
                <table class="auto-style8">
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="nuevoEstilo1"> <center><h5>Servicio Al Cliente</h5></center>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
               
                <img src="../Imagenes/Captura5.PNG" /><center><h5>Servicio Web</h5>
                </center>
                <h6>
                    <a href="Inicio.aspx">Pagina Web</a><br />
                    Red Social<br />
                    <a href="www.fb.com">Facebook/ASOCUCAITA</a><br />
                    Administra tu cuenta en linea con MIASOCUCAITA<br />
                    <a href="Login.aspx">Cuenta</a>
                </h6>
                                                </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                                                </div>&nbsp;<table class="auto-style1">
                    <tr>
                        <td>
                            <img alt="" class="auto-style9" src="../Imagenes/Captura6.PNG" /><span class="nuevoEstilo4">ingresa al canal 8 y consulte los lugares y formas de pago de su factura</span></td>
                    </tr>
                </table>
            </td>
            <td class="auto-style6" colspan="4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">Derecho de Inscripcion</td>
                        <td><asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">Cuota Servicio Mes
                </td>
                        <td>
                <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">Deuda Anterior</td>
                        <td><asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style15">Sancion</td>
                        <td>&nbsp;<asp:Label ID="Label7" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style14">Reconexion
                </td>
                        <td>
                <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <img alt="" class="auto-style10" src="../Imagenes/Captura.PNG" />Linea de Atencion<br />
                <a href="Contacto.aspx">Contactos</a></td>
            <td colspan="4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style16">Total
                </td>
                        <td>
                <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" BackColor="#0066FF" Font-Bold="True" Font-Italic="True" ForeColor="White" Text="Volver a Inicio" />
            </td>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
