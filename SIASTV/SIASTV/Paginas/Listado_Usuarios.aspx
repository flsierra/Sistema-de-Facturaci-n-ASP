<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Listado_Usuarios.aspx.vb" Inherits="SIASTV.Listado_Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <header>
        <img src="../Imagenes/logueo.png" />
    </header>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right">
        <center>
        LISTADO DE USUARIOS ASOCUCAITA<br />
            </center>
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
            </center>
        <br />
        <a href="InicioAdmin.aspx">Volver</a></div>
    </form>
</body>
</html>
