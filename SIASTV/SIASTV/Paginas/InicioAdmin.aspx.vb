Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class InicioAdmin
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Private Sub InicioAdmin_Init(sender As Object, e As EventArgs) Handles Me.Init
        cnn = New SqlConnection
        cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
        Dim sql As String = "select * from Usuario where id_usuario='" & id_usuario & "'"
        Dim da As New SqlDataAdapter(sql, cnn)
        ds = New DataSet
        da.Fill(ds, "Usuario")
        Label1.Text = ds.Tables("Usuario").Rows(0).Item("Nombre")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

End Class