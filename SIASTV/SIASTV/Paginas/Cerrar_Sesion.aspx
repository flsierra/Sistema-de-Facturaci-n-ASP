<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cerrar_Sesion.aspx.vb" Inherits="SIASTV.Cerrar_Sesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel ="shourcut icon" type="image/x-icon" href="../Imagenes/logueo.png" />
    <link rel="stylesheet" type="text/css" href="../css/Estilo5.css"/>
    <title>ASOCUCAITA</title>
    
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: 26px;
            font-weight: bold;
            color: #FFFFFF;
            font-style: italic;
        }
        .nuevoEstilo2 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: 30px;
            font-weight: bold;
            font-style: italic;
            color: #FFFFFF;
        }
    </style>
    
</head>
<body>
    
    <form id="form1" runat="server">
     
        <center>
            <h1 class="nuevoEstilo2">Gracias por ingresar...</h1>

            <br />
            <asp:Button ID="Button1" runat="server" Text="Volver a Ingresar" BackColor="#0066FF" ForeColor="White" />

        </center>
        
    </form>
</body>
</html>
