<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index.Master" CodeBehind="Factura1.aspx.vb" Inherits="SIASTV.Factura1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 236px;
    }
    .nuevoEstilo1 {
        font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        font-size: 21px;
        font-weight: bold;
        font-style: italic;
        color: #FFFFFF;
    }
        .nuevoEstilo2 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            font-variant: normal;
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



    <table class="auto-style1">
    <tr>
        <td colspan="4"><span class="nuevoEstilo2">Factura</span></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo1" colspan="2">id_factura</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo1" colspan="2">fecha</td>
        <td>
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo1" colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo1" colspan="2">usuario</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo1" colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="nuevoEstilo1" colspan="2">medio</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Primero" />
        </td>
        <td class="auto-style2">
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
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button5" runat="server" Text="Nuevo" />
        </td>
        <td class="auto-style2">
            <asp:Button ID="Button6" runat="server" Text="Insertar" />
        </td>
        <td>
            <asp:Button ID="Button7" runat="server" Text="Actualizar" />
        </td>
        <td>
            <asp:Button ID="Button8" runat="server" Text="Eliminar" />
        </td>
    </tr>
</table>
    			</div>
                    
						
				<div class="clearfix"> </div>
			</div>
		</div>
           
	</div>
</asp:Content>
