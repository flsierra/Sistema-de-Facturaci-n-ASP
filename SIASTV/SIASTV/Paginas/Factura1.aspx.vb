Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Factura1
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Private Sub Factura1_Init(sender As Object, e As EventArgs) Handles Me.Init
        Try
            cnn = New SqlConnection
            cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
            Dim sql As String = "select * from Factura1"
            Dim da As New SqlDataAdapter(sql, cnn)
            ds = New DataSet
            da.Fill(ds, "Factura1")
            TextBox1.Text = ds.Tables("Factura1").Rows(0).Item("id_factura")
            Call cargarcombo("select * from Medio_Pago", DropDownList2, "id_medio", "Entidad")
            Call cargarcombo("select * from Usuario", DropDownList1, "id_usuario", "Nombre")
            Calendar1.SelectedDate = ds.Tables("Factura1").Rows(0).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Factura1").Rows(0).Item("Fecha")
            DropDownList2.SelectedValue = ds.Tables("Factura1").Rows(0).Item("id_medio")
            DropDownList1.SelectedValue = ds.Tables("Factura1").Rows(0).Item("id_usuario")
        Catch ex As Exception
            MsgBox("Error de conexion :" + ex.Message, MsgBoxStyle.Information, "Error")
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        contFactura = 0
        TextBox1.Text = ds.Tables("Factura1").Rows(contFactura).Item("id_factura")
        Calendar1.SelectedDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
        DropDownList2.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_medio")
        DropDownList1.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_usuario")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        contFactura = contFactura - 1
        If contFactura < 0 Then
            contFactura = contFactura + 1
            TextBox1.Text = ds.Tables("Factura1").Rows(contFactura).Item("id_factura")
            Calendar1.SelectedDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
            DropDownList2.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_medio")
            DropDownList1.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_usuario")
        Else
            TextBox1.Text = ds.Tables("Factura1").Rows(contFactura).Item("id_factura")
            Calendar1.SelectedDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
            DropDownList2.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_medio")
            DropDownList1.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_usuario")
        End If

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        contFactura = contFactura + 1
        If contFactura >= ds.Tables("Factura1").Rows.Count Then
            contFactura = ds.Tables("Factura1").Rows.Count
            contFactura = contFactura - 1
        End If
        TextBox1.Text = ds.Tables("Factura1").Rows(contFactura).Item("id_factura")
        Calendar1.SelectedDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
        DropDownList2.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_medio")
        DropDownList1.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_usuario")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        contFactura = ds.Tables("Factura1").Rows.Count
        contFactura = contFactura - 1
        TextBox1.Text = ds.Tables("Factura1").Rows(contFactura).Item("id_factura")
        Calendar1.SelectedDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Factura1").Rows(contFactura).Item("Fecha")
        DropDownList2.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_medio")
        DropDownList1.SelectedValue = ds.Tables("Factura1").Rows(contFactura).Item("id_usuario")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        TextBox1.Text = ""

        Button4.Enabled = False
        Button7.Enabled = False
        Button8.Enabled = False
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Call ejecutar("insert into Factura1 (Fecha,id_usuario,id_medio) values('" & Calendar1.SelectedDate & "'," & DropDownList1.SelectedValue & "," & DropDownList2.SelectedValue & ")")
        Button3.Enabled = False
        Button4.Enabled = False
        Button8.Enabled = False
        contFactura = 0
        Response.Redirect("Factura1.aspx")
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Call ejecutar("update Factura1 set Fecha='" & Calendar1.SelectedDate & "', id_usuario=" & DropDownList1.SelectedValue & ", id_medio=" & DropDownList2.SelectedValue & " where id_factura=" & TextBox1.Text & " ")
        contFactura = 0
        Response.Redirect("Factura1.aspx")
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If MsgBox("¿Esta seguro de eliminar este registro ?", MsgBoxStyle.YesNo, "Información") = MsgBoxResult.Yes Then
            Call ejecutar("delete from Factura1 where id_factura=" & TextBox1.Text & " ")
            contFactura = 0
            Response.Redirect("Factura1.aspx")
        Else
            Exit Sub
        End If
    End Sub
End Class