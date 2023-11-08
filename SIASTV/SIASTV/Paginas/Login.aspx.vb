Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Login
    Inherits System.Web.UI.Page
    Public login As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim start As Integer

        cnn = New SqlConnection
        cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
        Dim sql As String = "select * from Usuario where Documento='" & TextBox1.Text & "' and Password ='" & TextBox2.Text & "'"
        Dim da As New SqlDataAdapter(sql, cnn)
        Login = New DataSet
        da.Fill(login, "Usuario")

        start = login.Tables("Usuario").Rows.Count

        If start = 0 Then
            MsgBox("Usuario no valido")
        End If

        If start = 1 Then
            Rol = login.Tables(0).Rows(0).Item("Rol")
            Nombre_Usuario = login.Tables(0).Rows(0).Item("Nombre")
            Apellido_Usuario = login.Tables(0).Rows(0).Item("Apellido")
            Direccion_Usuario = login.Tables(0).Rows(0).Item("Direccion")
            id_usuario = login.Tables(0).Rows(0).Item("id_usuario")
            If Rol = 1 Then
                Response.Redirect("InicioAdmin.aspx")
                Nombre_Usuario = login.Tables(0).Rows(0).Item("Nombre")
            End If
            If Rol = 2 Then
                Response.Redirect("InicioUsu.aspx")
                Nombre_Usuario = login.Tables(0).Rows(0).Item("Nombre")
                Apellido_Usuario = login.Tables(0).Rows(0).Item("Apellido")
                Direccion_Usuario = login.Tables(0).Rows(0).Item("Direccion")
                id_usuario = login.Tables(0).Rows(0).Item("id_usuario")
            End If
            Nombre_Usuario = login.Tables(0).Rows(0).Item("Nombre")
            Apellido_Usuario = login.Tables(0).Rows(0).Item("Apellido")
            Direccion_Usuario = login.Tables(0).Rows(0).Item("Direccion")
            id_usuario = login.Tables(0).Rows(0).Item("id_usuario")
        End If
    End Sub
End Class