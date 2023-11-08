Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Registro
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

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
        Call ejecutar("insert into Usuario (Documento,Nombre,Apellido,Password,Email,Telefono,Direccion,Rol) values( '" & txt1.Text & "','" & txt2.Text & "','" & txt3.Text & "','" & txt4.Text & "','" & txt5.Text & "','" & txt6.Text & "','" & txt8.Text & "','2')")
        contUsuario = 0
        MsgBox("Su cuenta se activara dentro de las 24 horas al registro,evite ingresar pues sera bloqueado...")
        Response.Redirect("Login.aspx")
    End Sub

    
    Protected Sub txt5_TextChanged(sender As Object, e As EventArgs) Handles txt5.TextChanged

    End Sub
End Class