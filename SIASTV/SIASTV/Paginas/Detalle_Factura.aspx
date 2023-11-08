<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index.Master" CodeBehind="Detalle_Factura.aspx.vb" Inherits="SIASTV.Detalle_Factura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .nuevoEstilo1 {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 20px;
        font-weight: bold;
        font-style: italic;
        color: #FFFFFF;
    }
    .auto-style2 {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 20px;
        font-weight: bold;
        font-style: italic;
        color: #FFFFFF;
        text-align: center;
    }
    .auto-style3 {
            text-align: center;
    }
    .auto-style4 {
        width: 111px;
    }
    .auto-style5 {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 20px;
        font-weight: bold;
        font-style: italic;
        color: #FFFFFF;
        width: 298px;
    }
    .auto-style6 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
            width: 298px;
            text-align: center;
        }
    .auto-style7 {
        height: 23px;
    }
    .auto-style8 {
        height: 38px;
    }
    .nuevoEstilo2 {
        font-size: 20px;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: bold;
        font-style: italic;
        color: #FFFFFF;
    }
        .auto-style9 {
            width: 216px;
        }
    .nuevoEstilo3 {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 20px;
        color: #FFFFFF;
        font-weight: bold;
        font-style: italic;
    }
        .auto-style10 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
            text-align: center;
            height: 23px;
        }
        .auto-style11 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
            text-align: center;
            height: 40px;
        }
        .auto-style12 {
            height: 40px;
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
    <table class="auto-style1">
    <tr class="nuevoEstilo1">
        <td colspan="4">Detalle Factura</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Id_Detalle</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Valor</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Factura</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Usuario</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11" colspan="2">Derecho Inscripcion</td>
        <td colspan="2" class="auto-style12">
            <asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">&nbsp;Mes(es) a facturar</td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2"></td>
        <td class="auto-style7" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Sancion</td>
        <td class="auto-style7" colspan="2">
            <asp:DropDownList ID="DropDownList5" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">&nbsp;</td>
        <td class="auto-style7" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Reconexion</td>
        <td class="auto-style7" colspan="2">
            <asp:DropDownList ID="DropDownList6" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">&nbsp;</td>
        <td class="auto-style7" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Deuda Anterior</td>
        <td class="auto-style7" colspan="2">
            <asp:DropDownList ID="DropDownList7" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2"></td>
        <td class="auto-style7" colspan="2"></td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Total</td>
        <td class="auto-style7" colspan="2">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">&nbsp;</td>
        <td class="auto-style7" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Fecha</td>
        <td class="auto-style8" colspan="2">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="Primero" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="Button2" runat="server" Text="Anterior" />
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="Siguiente" />
        </td>
        <td class="auto-style9">
            <asp:Button ID="Button4" runat="server" Text="Ultimo" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button5" runat="server" Text="Nuevo" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="Button6" runat="server" Text="Insertar" />
        </td>
        <td>
            <asp:Button ID="Button7" runat="server" Text="Actualizar" />
        </td>
        <td class="auto-style9">
            <asp:Button ID="Button8" runat="server" Text="Eliminar" />
        </td>
    </tr>
</table>

    	</div>
                    
						
				<div class="clearfix"> </div>
			</div>
		</div>
           
	</div>
        
<!-- //services -->

    				
    
</asp:Content>
