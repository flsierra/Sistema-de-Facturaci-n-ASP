<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index2.Master" CodeBehind="Parrilla.aspx.vb" Inherits="SIASTV.Parrilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            width: 137px;
            height: 94px;
        }
        .auto-style5 {
            width: 129px;
            height: 95px;
        }
        .auto-style6 {
            width: 116px;
            height: 73px;
        }
        .auto-style7 {
            width: 109px;
            height: 72px;
        }
        .auto-style8 {
            width: 123px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 162px;
            height: 86px;
        }
        .auto-style11 {
            width: 156px;
            height: 123px;
        }
        .auto-style12 {
            width: 144px;
            height: 62px;
        }
        .auto-style13 {
            width: 121px;
            height: 90px;
        }
        .auto-style14 {
            width: 104px;
            height: 98px;
        }
        .auto-style15 {
            width: 113px;
            height: 60px;
        }
        .auto-style16 {
            width: 192px;
            height: 80px;
        }
        .auto-style17 {
            width: 167px;
            height: 168px;
        }
        .auto-style18 {
            width: 160px;
            height: 97px;
        }
        .auto-style19 {
            width: 159px;
            height: 112px;
        }
        .auto-style20 {
            width: 160px;
            height: 91px;
        }
        .auto-style21 {
            width: 164px;
            height: 81px;
        }
        .auto-style22 {
            width: 199px;
            height: 82px;
        }
        .auto-style23 {
            width: 184px;
            height: 131px;
        }
        .auto-style24 {
            width: 180px;
            height: 145px;
        }
        .auto-style25 {
            width: 240px;
            height: 103px;
        }
        .auto-style26 {
            width: 225px;
            height: 117px;
        }
        .auto-style27 {
            width: 190px;
            height: 98px;
        }
        .auto-style28 {
            width: 165px;
            height: 146px;
        }
        .auto-style29 {
            width: 200px;
            height: 101px;
        }
        .auto-style30 {
            width: 208px;
            height: 110px;
        }
        .auto-style32 {
            height: 114px;
        }
        .auto-style33 {
            width: 194px;
            height: 95px;
        }
        .auto-style34 {
            width: 249px;
            height: 131px;
        }
        .auto-style35 {
            width: 199px;
            height: 99px;
        }
        .auto-style36 {
            width: 180px;
            height: 108px;
        }
        .auto-style37 {
            width: 166px;
            height: 140px;
        }
        .nuevoEstilo1 {
            font-size: 20px;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-style: italic;
            color: #000000;
        }
        .nuevoEstilo2 {
            font-size: 18px;
            font-family: Georgia, "Times New Roman", Times, serif;
            font-style: italic;
            font-weight: bold;
        }
        .auto-style38 {
            width: 184px;
            height: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../css/Estilo4.css">
     <nav>
		<ul class="nav">
            <li><a href="InicioUsu.aspx">Inicio</a></li>
		<li><a href="Puntos_venta.aspx">Puntos de Venta</a>
			
			
		</li>
		<li><a href="Contacto.aspx">Contactenos</a>
		 	

		</li>
		<li><a href="Cerrar_Sesion.aspx">Cerrar Sesion</a>
			</li> 
                </nav>
    <br />
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center"><span class="nuevoEstilo1">GUIA DE PROGRAMACION </span> </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 2</td>
            <td>
                <img alt="" class="auto-style4" src="../Imagenes/Cnal2.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 3</td>
            <td>
                <img alt="" class="auto-style5" src="../Imagenes/Cnal3.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 4</td>
            <td>
                <img alt="" class="auto-style6" src="../Imagenes/Cnal4.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 5</td>
            <td>
                <img alt="" class="auto-style7" src="../Imagenes/Cnal5.png" /></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 6</td>
            <td>
                <img alt="" class="auto-style10" src="../Imagenes/Cnal6.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 7</td>
            <td>
                <img alt="" class="auto-style11" src="../Imagenes/Cnal7.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 8 Comunitario</td>
            <td>
                <img alt="" class="auto-style38" src="../Imagenes/Escudo_de_Cucaita.svg.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 9</td>
            <td>
                <img alt="" class="auto-style12" src="../Imagenes/Cnal9.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 10</td>
            <td>
                <img alt="" class="auto-style13" src="../Imagenes/Cnal10.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 11</td>
            <td>
                <img alt="" class="auto-style14" src="../Imagenes/Cnal11.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 12</td>
            <td>
                <img alt="" class="auto-style15" src="../Imagenes/Cnal12.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 13</td>
            <td>
                <img alt="" class="auto-style16" src="../Imagenes/Cnal13.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 14</td>
            <td>
                <img alt="" class="auto-style17" src="../Imagenes/Cnal14.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 15</td>
            <td>
                <img alt="" class="auto-style18" src="../Imagenes/Cnal15.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 16</td>
            <td>
                <img alt="" class="auto-style19" src="../Imagenes/Cnal16.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 17</td>
            <td>
                <img alt="" class="auto-style20" src="../Imagenes/Cnal17.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 18</td>
            <td>
                <img alt="" class="auto-style21" src="../Imagenes/Cnal18.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 19</td>
            <td>
                <img alt="" class="auto-style22" src="../Imagenes/Cnal19.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 20</td>
            <td>
                <img alt="" class="auto-style23" src="../Imagenes/Cnal20.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 21</td>
            <td>
                <img alt="" class="auto-style24" src="../Imagenes/Cnal21.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 22</td>
            <td>
                <img alt="" class="auto-style25" src="../Imagenes/Cnal22.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 23</td>
            <td>
                <img alt="" class="auto-style26" src="../Imagenes/Cnal23.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 24</td>
            <td>
                <img alt="" class="auto-style27" src="../Imagenes/Cnal24.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 25</td>
            <td>
                <img alt="" class="auto-style28" src="../Imagenes/Cnal25.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 26</td>
            <td>
                <img alt="" class="auto-style29" src="../Imagenes/Cnal26.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 27</td>
            <td class="auto-style32">
                <img alt="" class="auto-style30" src="../Imagenes/Cnal27.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 28</td>
            <td>
                <img alt="" class="auto-style33" src="../Imagenes/Cnal28.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 29</td>
            <td>
                <img alt="" class="auto-style34" src="../Imagenes/Cnal29.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 30</td>
            <td>
                <img alt="" class="auto-style35" src="../Imagenes/Cnal30.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 31</td>
            <td>
                <img alt="" class="auto-style36" src="../Imagenes/Cnal31.png" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="nuevoEstilo2">Canal 32</td>
            <td>
                <img alt="" class="auto-style37" src="../Imagenes/Cnal32.png" /></td>
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
    </b></asp:Content>
