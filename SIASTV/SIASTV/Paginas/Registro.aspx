<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="SIASTV.Registro" %>

<!DOCTYPE html>
<script runat="server">


</script>


<html lang="en">
<head>
	<title>ASOCUCAITA</title>
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/jquery-ui.css" rel="stylesheet" />
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans" rel="stylesheet">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel ="shourcut icon" type="image/x-icon" href="../Imagenes/logueo.png" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Hotel Enquiry  Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <style type="text/css">
        .nuevo {
            background-image: url('../Imagenes/2.jpg');
            background-repeat: no-repeat;
        }
        .auto-style1 {
            width: 250px;
            height: 158px;
        }
        .nuevoEstilo1 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 30px;
            font-weight: bold;
            color: #000000;
        }
    </style>
</head>
    <header>

        <img alt="" class="auto-style1" src="../Imagenes/logueo.png" /></header>
<body class="nuevo">
	<h1><span class="nuevoEstilo1">Registro ASOCUCAITA</span></h1>
	<div class="main-agile">
		<form id="form1" runat="server">
&nbsp;<asp:Label ID="Label3" runat="server" Text="N° Documento" Font-Bold="True"></asp:Label><br />
            <asp:TextBox ID="txt1" runat="server" ToolTip="Apellido" ForeColor="White"></asp:TextBox>
&nbsp;<div>
    <asp:Label ID="Label2" runat="server" Text="Nombre" Font-Bold="True"></asp:Label><br />
                <asp:TextBox ID="txt2" runat="server" ToolTip="Apellido" ForeColor="White"></asp:TextBox>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Apellido" Font-Bold="True"></asp:Label><br />
            <asp:TextBox ID="txt3" runat="server" ToolTip="Cedula" ForeColor="White"></asp:TextBox>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Contraseña" Font-Bold="True"></asp:Label><br />
                <asp:TextBox ID="txt4" runat="server" ToolTip="Apellido" TextMode="Password" ForeColor="White"></asp:TextBox><br />
            </div>
&nbsp;
           <br /> <asp:Label ID="Label5" runat="server" Text="Correo Electronico" Font-Bold="True"></asp:Label>
            <div>
                
                <asp:TextBox ID="txt5" runat="server" ForeColor="White"></asp:TextBox>
                
            </div>
            <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Campo no valido " ControlToValidate="txt5" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div><br />
        <asp:Label ID="Label6" runat="server" Text="Telefono" Font-Bold="True"></asp:Label>
            <div>

            <asp:TextBox ID="txt6" runat="server" ForeColor="White"></asp:TextBox>
                </div>
            <div>

                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt6" ErrorMessage="Longitud no valida" ForeColor="Red" MaximumValue="99999999" MinimumValue="0"></asp:RangeValidator>

            </div> <br />
            <asp:Label ID="Label10" runat="server" Text="Direccion" Font-Bold="True"></asp:Label><br />
            <div>
                                
            <asp:TextBox ID="txt8" runat="server" ForeColor="White"></asp:TextBox>
             
            </div>
            
&nbsp;<div>
            </div>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Registrar" />
&nbsp;</form>
	</div>
	<div class="footer-w3l">
		<p class="agileinfo"> &nbsp;</p>
	</div>

</body>
</html>
