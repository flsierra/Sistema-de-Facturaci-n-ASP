<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Paginas/Index.Master" CodeBehind="InicioAdmin.aspx.vb" Inherits="SIASTV.InicioAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: 30px;
            font-weight: normal;
            font-style: italic;
            color: #FFFFFF;
        }
        .auto-style2 {
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr class="nuevoEstilo1">
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr class="nuevoEstilo1">
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr class="nuevoEstilo1">
            <td style="text-align: center" class="auto-style2">Bienvenido Administrador</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="White" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr class="nuevoEstilo1">
            <td style="text-align: center">Selecciones una opcion del menú</td>
        </tr>
        <tr class="nuevoEstilo1">
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr class="nuevoEstilo1">
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr class="nuevoEstilo1">
            <td style="text-align: center">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
