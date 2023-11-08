Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Olvido_Contraseña
    Inherits System.Web.UI.Page
    Public ds As DataSet
    Public cuenta As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            cnn = New SqlConnection
            cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
            Dim sql As String = "select * from Usuario where Documento='" & TextBox1.Text & "' and Email='" & TextBox2.Text & "' "
            Dim da As New SqlDataAdapter(sql, cnn)
            ds = New DataSet
            da.Fill(ds, "Usuario")
            cuenta = ds.Tables("Usuario").Rows.Count
        Catch ex As Exception
        End Try

        If cuenta <> 1 Then
            MsgBox("Datos No registrados, verifique")
            TextBox1.Text = ""
            TextBox2.Text = ""
        Else
            Sesion = ds.Tables(0).Rows(0).Item("id_usuario")
            Response.Redirect("Restablecer_Contraseña.aspx")
        End If
    End Sub
End Class