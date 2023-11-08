Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Factura_Usuario
    Inherits System.Web.UI.Page
    Public ds As DataSet
    Public ds1 As DataSet
    Public ds2 As DataSet
    Public ds3 As DataSet
    Public ds4 As DataSet
    Public ds5 As DataSet



    Private Sub Factura_Usuario_Init(sender As Object, e As EventArgs) Handles Me.Init
        Label2.Text = "Nombre y Apellidos" + " " + Nombre_Usuario + Apellido_Usuario
        Label3.Text = "Direccion" + " " + Direccion_Usuario
        Label10.Text = "Referencia Unica de Cliente" + " " + id_usuario

        cnn = New SqlConnection
        cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
        Dim sql As String = "select Total from Detalle_Factura where id_usuario='" & id_usuario & "'"
        Dim da As New SqlDataAdapter(sql, cnn)
        ds = New DataSet
        da.Fill(ds, "Detalle_Factura")


        Dim sql1 As String = "select d.Estado from Derecho d,Detalle_Factura df where df.id_derecho=d.id_derecho and df.id_usuario='" & id_usuario & "'"
        Dim da1 As New SqlDataAdapter(sql1, cnn)
        ds1 = New DataSet
        da1.Fill(ds1, "Derecho")

        Dim sql2 As String = "select de.Estado from Deuda de,Detalle_Factura df where df.id_deuda=de.id_deuda and df.id_usuario='" & id_usuario & "'"
        Dim da2 As New SqlDataAdapter(sql2, cnn)
        ds2 = New DataSet
        da2.Fill(ds2, "Deuda")

        Dim sql3 As String = "select m.Mes from Mensualidad m,Detalle_Factura df where df.id_mensualidad=m.id_mensualidad and df.id_usuario='" & id_usuario & "'"
        Dim da3 As New SqlDataAdapter(sql3, cnn)
        ds3 = New DataSet
        da3.Fill(ds3, "Mensualidad")

        Dim sql4 As String = "select s.Estado from Sancion s,Detalle_Factura df where df.id_sancion=s.id_sancion and df.id_usuario='" & id_usuario & "'"
        Dim da4 As New SqlDataAdapter(sql4, cnn)
        ds4 = New DataSet
        da4.Fill(ds4, "Sancion")

        Dim sql5 As String = "select r.Estado from Reconexion r,Detalle_Factura df where df.id_reconexion=r.id_reconexion and df.id_usuario='" & id_usuario & "'"
        Dim da5 As New SqlDataAdapter(sql5, cnn)
        ds5 = New DataSet
        da5.Fill(ds5, "Reconexion")

        Label4.Text = ds1.Tables("Derecho").Rows(0).Item("Estado")
        Label5.Text = ds3.Tables("Mensualidad").Rows(0).Item("Mes")
        Label6.Text = ds2.Tables("Deuda").Rows(0).Item("Estado")
        Label7.Text = ds4.Tables("Sancion").Rows(0).Item("Estado")
        Label8.Text = ds5.Tables("Reconexion").Rows(0).Item("Estado")
        Label9.Text = ds.Tables("Detalle_Factura").Rows(0).Item("Total")

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("InicioUsu.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Cerrar_Sesion.aspx")
    End Sub
End Class