Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class InicioUsu
    Inherits System.Web.UI.Page
    Public ds As DataSet
    Private Sub InicioUsu_Init(sender As Object, e As EventArgs) Handles Me.Init

        cnn = New SqlConnection
        cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
        Dim sql As String = "select * from Detalle_Factura where id_usuario='" & id_usuario & "'"
        Dim da As New SqlDataAdapter(sql, cnn)
        ds = New DataSet
        da.Fill(ds, "Detalle_Factura")
        Label2.Text = ds.Tables("Detalle_Factura").Rows(0).Item("Total")
        Label3.Text = ds.Tables("Detalle_Factura").Rows(0).Item("Total")
        Label4.Text = ds.Tables("Detalle_Factura").Rows(0).Item("Fecha")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Factura_Usuario.aspx")
    End Sub
End Class