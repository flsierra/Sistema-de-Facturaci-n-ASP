Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Listado_Usuarios
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Private Sub Listado_Usuarios_Init(sender As Object, e As EventArgs) Handles Me.Init
        cnn = New SqlConnection
        cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
        Dim sql As String = "select Documento,Nombre,Apellido,Email,Telefono,Direccion from Usuario"
        Dim da As New SqlDataAdapter(sql, cnn)
        ds = New DataSet
        da.Fill(ds, "Usuario")

        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

End Class