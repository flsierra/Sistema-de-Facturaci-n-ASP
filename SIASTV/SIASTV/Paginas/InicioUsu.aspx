<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index2.Master" CodeBehind="InicioUsu.aspx.vb" Inherits="SIASTV.InicioUsu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 479px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 778px;
        }
        .auto-style7 {
            width: 174px;
            height: 23px;
        }
        .auto-style8 {
            width: 235px;
        }
        .auto-style9 {
            width: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="../css/Estilo4.css"/>
      <nav>
		<ul class="nav">
            <li><a href="InicioUsu.aspx">Inicio</a></li>
		<li><a href="Puntos_venta.aspx">Puntos de Venta</a>
			
			
		</li>
            <li><a href="Parrilla.aspx"> Parrilla de Programacion</a>  </li>
		<li><a href="Contacto.aspx">Contactenos</a>
		 	

		</li>
		<li><a href="Cerrar_Sesion.aspx">Cerrar Sesion</a>
			</li> 
                </nav>
<br /> <br />

    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <table class="auto-style1" style="width: 71%">
                    <tr>
                        <td class="auto-style3">Total a Pagar</td>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">
                <table class="auto-style1" style="width: 88%">
                    <tr>
                        <td class="auto-style7">Total Ultima Factura</td>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" style="text-align: center" Text="Ver Factura" BackColor="#0066FF" Font-Bold="True" ForeColor="White" />
            </td>
            <td class="auto-style9">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">Fecha de Vencimiento</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table><br />
    <footer>
        <center>
            <h3>
                REALIZADO POR <br />
                EDISSON FABIAN LARGO SIERRA <br />
                ADSI 2017<br />
                ASOCIACION COMUNITARIA DE TELEVISION DE CUCAITA "ASOCUCAITA" ©<br />
                TODOS LOS DERECHOS RESERVADOS ®
            </h3>
        </center>
    </footer>

</asp:Content>
