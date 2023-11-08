Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Partial Class Usuario
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        contUsuario = 0
        TextBox1.Text = ds.Tables("Usuario").Rows(contUsuario).Item("id_usuario")
        TextBox2.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Documento")
        TextBox3.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Nombre")
        TextBox4.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Apellido")
        TextBox5.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Password")
        TextBox6.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Email")
        TextBox7.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Telefono")
        TextBox8.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Direccion")
        TextBox9.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Rol")

    End Sub

    Private Sub Usuario_Init(sender As Object, e As EventArgs) Handles Me.Init
        Try
            cnn = New SqlConnection
            cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
            Dim sql As String = "select * from Usuario"
            Dim da As New SqlDataAdapter(sql, cnn)
            ds = New DataSet
            da.Fill(ds, "Usuario")
            TextBox1.Text = ds.Tables("Usuario").Rows(0).Item("id_usuario")
            TextBox2.Text = ds.Tables("Usuario").Rows(0).Item("Documento")
            TextBox3.Text = ds.Tables("Usuario").Rows(0).Item("Nombre")
            TextBox4.Text = ds.Tables("Usuario").Rows(0).Item("Apellido")
            TextBox5.Text = ds.Tables("Usuario").Rows(0).Item("Password")
            TextBox6.Text = ds.Tables("Usuario").Rows(0).Item("Email")
            TextBox7.Text = ds.Tables("Usuario").Rows(0).Item("Telefono")
            TextBox8.Text = ds.Tables("Usuario").Rows(0).Item("Direccion")
            TextBox9.Text = ds.Tables("Usuario").Rows(0).Item("Rol")


        Catch ex As Exception
            MsgBox("Error de conexion :" + ex.Message, MsgBoxStyle.Information, "Error")
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        contUsuario = contUsuario - 1
        If contUsuario < 0 Then
            contUsuario = contUsuario + 1
            TextBox1.Text = ds.Tables("Usuario").Rows(contUsuario).Item("id_usuario")
            TextBox2.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Documento")
            TextBox3.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Nombre")
            TextBox4.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Apellido")
            TextBox5.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Password")
            TextBox6.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Email")
            TextBox7.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Telefono")
            TextBox8.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Direccion")
            TextBox9.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Rol")
        Else
            TextBox1.Text = ds.Tables("Usuario").Rows(contUsuario).Item("id_usuario")
            TextBox2.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Documento")
            TextBox3.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Nombre")
            TextBox4.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Apellido")
            TextBox5.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Password")
            TextBox6.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Email")
            TextBox7.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Telefono")
            TextBox8.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Direccion")
            TextBox9.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Rol")
        End If


    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        contUsuario = contUsuario + 1
        If contUsuario >= ds.Tables("Usuario").Rows.Count Then
            contUsuario = ds.Tables("Usuario").Rows.Count
            contUsuario = contUsuario - 1
        End If
        TextBox1.Text = ds.Tables("Usuario").Rows(contUsuario).Item("id_usuario")
        TextBox2.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Documento")
        TextBox3.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Nombre")
        TextBox4.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Apellido")
        TextBox5.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Password")
        TextBox6.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Email")
        TextBox7.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Telefono")
        TextBox8.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Direccion")
        TextBox9.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Rol")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        contUsuario = ds.Tables("Usuario").Rows.Count
        contUsuario = contUsuario - 1
        TextBox1.Text = ds.Tables("Usuario").Rows(contUsuario).Item("id_usuario")
        TextBox2.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Documento")
        TextBox3.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Nombre")
        TextBox4.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Apellido")
        TextBox5.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Password")
        TextBox6.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Email")
        TextBox7.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Telefono")
        TextBox8.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Direccion")
        TextBox9.Text = ds.Tables("Usuario").Rows(contUsuario).Item("Rol")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""

        Button4.Enabled = False
        Button7.Enabled = False
        Button8.Enabled = False
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        


        Call ejecutar("insert into Usuario (Documento,Nombre,Apellido,Password,Email,Telefono,Direccion,Rol) values( '" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "', '" & TextBox9.Text & "')")
            Button3.Enabled = False
            Button4.Enabled = False
            Button8.Enabled = False
            contUsuario = 0
            Response.Redirect("Usuario.aspx")

    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If MsgBox("¿Esta seguro de eliminar este registro ?", MsgBoxStyle.YesNo, "Información") = MsgBoxResult.Yes Then
            Call ejecutar("delete from Usuario where id_usuario=" & TextBox1.Text & " ")
            contUsuario = 0
            Response.Redirect("Usuario.aspx")
        Else
            Exit Sub
        End If
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Call ejecutar("update Usuario set Documento='" & TextBox2.Text & "' where id_usuario=" & TextBox1.Text & " ")
        Call ejecutar("update Usuario set Nombre='" & TextBox3.Text & "' where id_usuario=" & TextBox1.Text & " ")
        Call ejecutar("update Usuario set Apellido='" & TextBox4.Text & "' where id_usuario=" & TextBox1.Text & " ")
        Call ejecutar("update Usuario set Password='" & TextBox5.Text & "' where id_usuario=" & TextBox1.Text & " ")
        Call ejecutar("update Usuario set Email='" & TextBox6.Text & "' where id_usuario=" & TextBox1.Text & " ")
        Call ejecutar("update Usuario set Telefono='" & TextBox7.Text & "' where id_usuario=" & TextBox1.Text & " ")
        Call ejecutar("update Usuario set Direccion='" & TextBox8.Text & "' where id_usuario=" & TextBox1.Text & " ")
        Call ejecutar("update Usuario set Rol='" & TextBox9.Text & "' where id_usuario=" & TextBox1.Text & " ")
        contUsuario = 0
        Response.Redirect("Usuario.aspx")
    End Sub
End Class