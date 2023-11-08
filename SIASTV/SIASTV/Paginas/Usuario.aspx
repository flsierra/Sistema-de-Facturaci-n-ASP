<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index.Master" CodeBehind="Usuario.aspx.vb" Inherits="SIASTV.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 245px;
    }
    .auto-style4 {
        height: 23px;
    }
    .auto-style5 {
            width: 56px;
        }
    .nuevoEstilo1 {
        color: #808080;
        font-weight: bold;
    }
    .nuevoEstilo2 {
        color: #FFFFFF;
        font-weight: bold;
        font-size: 15px;
        font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        font-style: italic;
    }
    .auto-style8 {
    }
    .auto-style9 {
        width: 280px;
    }
    .nuevoEstilo3 {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 20px;
        font-weight: bold;
        font-style: italic;
        color: #FFFFFF;
    }
    .auto-style10 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
            text-align: right;
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
    <tr class="nuevoEstilo3">
        <td class="text-center" colspan="7">Control de&nbsp; Usuarios</td>
    </tr>
    <tr>
        <td colspan="7" style="text-align: center">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">Id_Usuario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style4" colspan="3">
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td class="auto-style4" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">Documento&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td colspan="3">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">Nombre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
        <td class="auto-style8" colspan="3">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td class="auto-style8" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">Apellido&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td colspan="3">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">Contraseña &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td colspan="3">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">E-mail&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td colspan="3">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Campo no valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">Telefono&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td colspan="3">
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="* Longitud no valida" ForeColor="Red" MaximumValue="99999999" MinimumValue="0" Font-Bold="True"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Direccion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td colspan="3">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="4">Rol&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td colspan="3">
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Longitud no valida" ForeColor="Red" MaximumValue="2" MinimumValue="1" Font-Bold="True"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
         <asp:Button ID="Button1" runat="server" Text="Primero" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style5">
            <asp:Button ID="Button2" runat="server" Text="Anterio" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style8">
            <asp:Button ID="Button3" runat="server" Text="Siguiente" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style9">
            <asp:Button ID="Button4" runat="server" Text="Ultimo" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
         <asp:Button ID="Button5" runat="server" Text="Nuevo" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style5">
            <asp:Button ID="Button6" runat="server" Text="Insertar" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style8">
            <asp:Button ID="Button7" runat="server" Text="Actualizar" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style9">
            <asp:Button ID="Button8" runat="server" Text="Eliminar" BackColor="Silver" Font-Bold="True" ForeColor="Black" />
        </td>
        <td class="auto-style9">
            &nbsp;</td>
    </tr>
</table>
             
							 
						</div>
                    
						
				<div class="clearfix"> </div>
			</div>
		</div>
           
	</div>
        
<!-- //services -->


   
    
</asp:Content>
