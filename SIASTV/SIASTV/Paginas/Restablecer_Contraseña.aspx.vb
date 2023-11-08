Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Restablecer_Contraseña
    Inherits System.Web.UI.Page
    Public ds As DataSet

    

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            cnn = New SqlConnection
            cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
            Dim sql As String = "select * from Usuario"
            Dim da As New SqlDataAdapter(sql, cnn)
            ds = New DataSet
            da.Fill(ds, "Usuario")

        Catch ex As Exception

        End Try

        If (TextBox1.Text = TextBox2.Text) Then
            Call ejecutar("update Usuario set Password='" & TextBox1.Text & "' where id_usuario='" & Sesion & "' ")
            contUsuario = 0
            Response.Redirect("Login.aspx")
        Else
            MsgBox("Las contraseñas no coinciden", MsgBoxStyle.Exclamation)
        End If
    End Sub
End Class