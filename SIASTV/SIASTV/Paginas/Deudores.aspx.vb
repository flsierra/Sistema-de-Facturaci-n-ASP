Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Deudores
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Private Sub Deudores_Init(sender As Object, e As EventArgs) Handles Me.Init
        cnn = New SqlConnection
        cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
        Dim sql As String = "select dt.id_detalle,dt.Total,dt.Fecha,us.Nombre,us.Apellido from Detalle_Factura dt, Usuario us, Deuda de where de.id_deuda = dt.id_deuda And dt.id_usuario = us.id_usuario and de.Estado='SI'"
        Dim da As New SqlDataAdapter(sql, cnn)
        ds = New DataSet
        da.Fill(ds, "Detalle_Factura")

        GridView1.DataSource = ds
        GridView1.DataBind()

    End Sub

    

End Class