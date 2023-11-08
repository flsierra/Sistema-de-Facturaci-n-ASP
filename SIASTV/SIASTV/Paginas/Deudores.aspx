<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Deudores.aspx.vb" Inherits="SIASTV.Deudores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: 24px;
            font-weight: bold;
            font-style: italic;
        }
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
    <header>
        <img src="../Imagenes/logueo.png" />
    </header>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <span class="nuevoEstilo1">DEUDORES ASOCUCAITA</span><br />
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            </center>
            <div class="auto-style1">
            <br />
            <a href="InicioAdmin.aspx">Volver</a><br />
    
        </div>
    
    </div>
    </form>
</body>
</html>
