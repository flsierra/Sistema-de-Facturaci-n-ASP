Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Partial Class Transaccion1
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Private Sub Transaccion1_Init(sender As Object, e As EventArgs) Handles Me.Init
        Try
            cnn = New SqlConnection
            cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
            Dim sql As String = "select * from Transaccion"
            Dim da As New SqlDataAdapter(sql, cnn)
            ds = New DataSet
            da.Fill(ds, "Transaccion")
            TextBox1.Text = ds.Tables("Transaccion").Rows(0).Item("id_transaccion")
            TextBox2.Text = ds.Tables("Transaccion").Rows(0).Item("Tipo_Cuenta")
            TextBox3.Text = ds.Tables("Transaccion").Rows(0).Item("Numero_Cuenta")

            Call cargarcombo("select * from Mensualidad", DropDownList1, "id_mensualidad", "Mes")
            Call cargarcombo("select * from Usuario", DropDownList2, "id_usuario", "Nombre")
            Call cargarcombo("select * from Detalle_Factura", DropDownList3, "id_detalle", "Valor")
            Calendar1.SelectedDate = ds.Tables("Transaccion").Rows(0).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Transaccion").Rows(0).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Transaccion").Rows(0).Item("id_mensualidad")
            DropDownList2.SelectedValue = ds.Tables("Transaccion").Rows(0).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Transaccion").Rows(0).Item("id_detalle")
        Catch ex As Exception
            MsgBox("Error de conexion :" + ex.Message, MsgBoxStyle.Information, "Error")
        End Try
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        contTransaccion = 0
        TextBox1.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_transaccion")
        TextBox2.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Tipo_Cuenta")
        TextBox3.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Numero_Cuenta")
        Calendar1.SelectedDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_mensualidad")
        DropDownList2.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_detalle")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        contTransaccion = contTransaccion - 1
        If contTransaccion < 0 Then
            contTransaccion = contTransaccion + 1
            TextBox1.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_transaccion")
            TextBox2.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Tipo_Cuenta")
            TextBox3.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Numero_Cuenta")
            Calendar1.SelectedDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_mensualidad")
            DropDownList2.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_detalle")
        Else
            TextBox1.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_transaccion")
            TextBox2.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Tipo_Cuenta")
            TextBox3.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Numero_Cuenta")
            Calendar1.SelectedDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_mensualidad")
            DropDownList2.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_detalle")
        End If

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        contTransaccion = contTransaccion + 1
        If contTransaccion >= ds.Tables("Transaccion").Rows.Count Then
            contTransaccion = ds.Tables("Transaccion").Rows.Count
            contTransaccion = contTransaccion - 1
        End If
        TextBox1.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_transaccion")
        TextBox2.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Tipo_Cuenta")
        TextBox3.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Numero_Cuenta")
        Calendar1.SelectedDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_mensualidad")
        DropDownList2.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_detalle")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
         TextBox1.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_transaccion")
        TextBox2.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Tipo_Cuenta")
        TextBox3.Text = ds.Tables("Transaccion").Rows(contTransaccion).Item("Numero_Cuenta")
        Calendar1.SelectedDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Transaccion").Rows(contTransaccion).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_mensualidad")
        DropDownList2.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Transaccion").Rows(contTransaccion).Item("id_detalle")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""


        Button4.Enabled = False
        Button7.Enabled = False
        Button8.Enabled = False
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Call ejecutar("insert into Transaccion (Tipo_Cuenta,Numero_Cuenta,Valor_Factura,Fecha,id_mensualidad,id_usuario,id_detalle) values( '" & TextBox2.Text & "','" & TextBox3.Text & "','" & Calendar1.SelectedDate & "'," & DropDownList1.SelectedValue & "," & DropDownList2.SelectedValue & "," & DropDownList3.SelectedValue & ")")
        Button3.Enabled = False
        Button4.Enabled = False
        Button8.Enabled = False
        contTransaccion = 0
        Response.Redirect("Transaccion.aspx")
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Call ejecutar("update Alquiler set Tipo_Cuenta='" & TextBox2.Text & "', id_mensualidad=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & ", id_detalle=" & DropDownList3.SelectedValue & " where id_transaccion=" & TextBox1.Text & " ")
        Call ejecutar("update Alquiler set Numero_Cuenta='" & TextBox3.Text & "', id_mensualidad=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & ", id_detalle=" & DropDownList3.SelectedValue & " where  id_transaccion=" & TextBox1.Text & " ")
        Call ejecutar("update Alquiler set Fecha='" & Calendar1.SelectedDate & "', id_mensualidad=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & "id_detalle=" & DropDownList3.SelectedValue & "  where id_transaccion=" & TextBox1.Text & " ")
        contTransaccion = 0
        Response.Redirect("Transaccion.aspx")
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If MsgBox("¿Esta seguro de eliminar este registro ?", MsgBoxStyle.YesNo, "Información") = MsgBoxResult.Yes Then
            Call ejecutar("delete from Transaccion where id_transaccion=" & TextBox1.Text & " ")
            contTransaccion = 0
            Response.Redirect("Transaccion.aspx")
        Else
            Exit Sub
        End If
    End Sub
End Class