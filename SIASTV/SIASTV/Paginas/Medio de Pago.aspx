<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index.Master" CodeBehind="Medio de Pago.aspx.vb" Inherits="SIASTV.Transaccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .nuevoEstilo1 {
        color: #FFFFFF;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 20px;
        font-weight: bold;
        font-style: italic;
    }
    .auto-style3 {
        }
        .nuevoEstilo2 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: 25px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
        }
        .auto-style4 {
            height: 23px;
        }
        .nuevoEstilo3 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
        }
        .nuevoEstilo4 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/lightGallery.css" rel="stylesheet" />
    <link href="../css/style1.css" rel="stylesheet" />
       <div class="services" id="services">
        
		<div class="container">
			
			<div class="wthree-services-grids">
				<div class="col-sm-3 wthree-services">
					<div class="wthree-services-grid">
						</div>
<div class="wthree-services-info">
<
    <table class="auto-style1">
    <tr class="nuevoEstilo2">
        <td colspan="4" style="text-align: center">Puntos &nbsp; de &nbsp; Pago</td>
    </tr>
    <tr>
        <td class="nuevoEstilo2">&nbsp;</td>
        <td class="nuevoEstilo2">&nbsp;</td>
        <td class="nuevoEstilo2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr class="nuevoEstilo2">
        <td class="nuevoEstilo1" colspan="2">Id_Medio</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="nuevoEstilo2">&nbsp;</td>
        <td class="nuevoEstilo2">&nbsp;</td>
        <td class="nuevoEstilo2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr class="nuevoEstilo2">
        <td class="nuevoEstilo1" colspan="2">Entidad</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
        </td>
    </tr>
    <tr class="nuevoEstilo2">
        <td class="nuevoEstilo1" colspan="2">&nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr class="nuevoEstilo2">
        <td class="auto-style3" colspan="2">Direccion</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo3" colspan="2">Mes</td>
        <td colspan="2" class="auto-style4">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="nuevoEstilo3" colspan="2">&nbsp;</td>
        <td colspan="2" class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo3" colspan="2">Valor_Factura</td>
        <td colspan="2" class="auto-style4">
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="nuevoEstilo3" colspan="2">&nbsp;</td>
        <td colspan="2" class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo3" colspan="2">Usuario</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2"><span class="nuevoEstilo4">Fecha</span></td>
        <td colspan="2">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="Primero" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Anterior" />
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="Siguiente" />
        </td>
        <td>
            <asp:Button ID="Button4" runat="server" Text="Ultimo" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button5" runat="server" Text="Nuevo" />
        </td>
        <td>
            <asp:Button ID="Button6" runat="server" Text="Insertar" />
        </td>
        <td>
            <asp:Button ID="Button7" runat="server" Text="Actualizar" />
        </td>
        <td>
            <asp:Button ID="Button8" runat="server" Text="Eliminar" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    			</div>
                    
						
				<div class="clearfix"> </div>
			</div>
		</div>
           
	</div>
</asp:Content>
