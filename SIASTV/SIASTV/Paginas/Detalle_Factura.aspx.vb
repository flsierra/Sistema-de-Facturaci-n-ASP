Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Partial Class Detalle_Factura
    Inherits System.Web.UI.Page
    Public ds As DataSet

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        Try
            cnn = New SqlConnection
            cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
            Dim sql As String = "select * from Detalle_Factura"
            Dim da As New SqlDataAdapter(sql, cnn)
            ds = New DataSet
            da.Fill(ds, "Detalle_Factura")
            TextBox1.Text = ds.Tables("Detalle_Factura").Rows(0).Item("id_detalle")
            TextBox2.Text = ds.Tables("Detalle_Factura").Rows(0).Item("Valor")
            TextBox8.Text = ds.Tables("Detalle_Factura").Rows(0).Item("Total")
            Call cargarcombo("select * from Factura1", DropDownList1, "id_factura", "id_factura")
            Call cargarcombo("select * from Usuario", DropDownList2, "id_usuario", "Nombre")
            Call cargarcombo("select * from Mensualidad", DropDownList3, "id_mensualidad", "Mes")
            Call cargarcombo("select * from Derecho", DropDownList4, "id_derecho", "Estado")
            Call cargarcombo("select * from Sancion", DropDownList5, "id_sancion", "Estado")
            Call cargarcombo("select * from Reconexion", DropDownList6, "id_reconexion", "Estado")
            Call cargarcombo("select * from Deuda", DropDownList7, "id_deuda", "Estado")
            Calendar1.SelectedDate = ds.Tables("Detalle_Factura").Rows(0).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Detalle_Factura").Rows(0).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Detalle_Factura").Rows(0).Item("id_factura")
            DropDownList2.SelectedValue = ds.Tables("Detalle_Factura").Rows(0).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Detalle_Factura").Rows(0).Item("id_mensualidad")
            DropDownList4.SelectedValue = ds.Tables("Detalle_Factura").Rows(0).Item("id_derecho")
            DropDownList5.SelectedValue = ds.Tables("Detalle_Factura").Rows(0).Item("id_sancion")
            DropDownList6.SelectedValue = ds.Tables("Detalle_Factura").Rows(0).Item("id_reconexion")
            DropDownList7.SelectedValue = ds.Tables("Detalle_Factura").Rows(0).Item("id_deuda")

        Catch ex As Exception
            MsgBox("Error de conexion :" + ex.Message, MsgBoxStyle.Information, "Error")
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        contDetalle = 0
        TextBox1.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_detalle")
        TextBox2.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Valor")
        TextBox8.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Total")
        Calendar1.SelectedDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_factura")
        DropDownList2.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_mensualidad")
        DropDownList4.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_derecho")
        DropDownList5.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_sancion")
        DropDownList6.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_reconexion")
        DropDownList7.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_deuda")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        contDetalle = contDetalle - 1
        If contDetalle < 0 Then
            contDetalle = contDetalle + 1
            TextBox1.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_detalle")
            TextBox2.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Valor")
            TextBox8.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Total")
            Calendar1.SelectedDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_factura")
            DropDownList2.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_mensualidad")
            DropDownList4.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_derecho")
            DropDownList5.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_sancion")
            DropDownList6.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_reconexion")
            DropDownList7.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_deuda")

        Else
            TextBox1.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_detalle")
            TextBox2.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Valor")
            TextBox8.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Total")
            Calendar1.SelectedDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_factura")
            DropDownList2.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_mensualidad")
            DropDownList4.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_derecho")
            DropDownList5.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_sancion")
            DropDownList6.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_reconexion")
            DropDownList7.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_deuda")
        End If

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        contDetalle = contDetalle + 1
        If contDetalle >= ds.Tables("Detalle_Factura").Rows.Count Then
            contDetalle = ds.Tables("Detalle_Factura").Rows.Count
            contDetalle = contDetalle - 1
        End If
        TextBox1.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_detalle")
        TextBox2.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Valor")
        TextBox8.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Total")
        Calendar1.SelectedDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_factura")
        DropDownList2.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_mensualidad")
        DropDownList4.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_derecho")
        DropDownList5.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_sancion")
        DropDownList6.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_reconexion")
        DropDownList7.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_deuda")


    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        contDetalle = ds.Tables("Detalle_Factura").Rows.Count
        contDetalle = contDetalle - 1
        TextBox1.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_detalle")
        TextBox2.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Valor")
        TextBox8.Text = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Total")
        Calendar1.SelectedDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_factura")
        DropDownList2.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_mensualidad")
        DropDownList4.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_derecho")
        DropDownList5.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_sancion")
        DropDownList6.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_reconexion")
        DropDownList7.SelectedValue = ds.Tables("Detalle_Factura").Rows(contDetalle).Item("id_deuda")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox8.Text = ""

        Button4.Enabled = False
        Button7.Enabled = False
        Button8.Enabled = False
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Call ejecutar("insert into Detalle_Factura (Valor,Fecha,Total,id_factura,id_usuario,id_derecho,id_mensualidad,id_sancion,id_reconexion,id_deuda) values( '" & TextBox2.Text & "','" & Calendar1.SelectedDate & "','" & TextBox8.Text & "'," & DropDownList1.SelectedValue & "," & DropDownList2.SelectedValue & ", " & DropDownList4.SelectedValue & ", " & DropDownList3.SelectedValue & ", " & DropDownList5.SelectedValue & ", " & DropDownList6.SelectedValue & ", " & DropDownList7.SelectedValue & " )")
        Button3.Enabled = False
        Button4.Enabled = False
        Button8.Enabled = False
        contDetalle = 0
        Response.Redirect("Detalle_Factura.aspx")
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Call ejecutar("update Detalle_Factura set Valor='" & TextBox2.Text & "', id_factura=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & ", id_derecho= " & DropDownList4.SelectedValue & ", id_mensualidad=" & DropDownList3.SelectedValue & ", id_sancion=" & DropDownList5.SelectedValue & ",id_reconexion=" & DropDownList6.SelectedValue & ",id_deuda=" & DropDownList7.SelectedValue & " where id_detalle=" & TextBox1.Text & " ")
        Call ejecutar("update Detalle_Factura set Total='" & TextBox8.Text & "', id_factura=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & ", id_derecho= " & DropDownList4.SelectedValue & ", id_mensualidad=" & DropDownList3.SelectedValue & ", id_sancion=" & DropDownList5.SelectedValue & ",id_reconexion=" & DropDownList6.SelectedValue & ",id_deuda=" & DropDownList7.SelectedValue & " where id_detalle=" & TextBox1.Text & " ")
        Call ejecutar("update Detalle_Factura set Fecha='" & Calendar1.SelectedDate & "', id_factura=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & ", id_derecho= " & DropDownList4.SelectedValue & ", id_mensualidad=" & DropDownList3.SelectedValue & ", id_sancion=" & DropDownList5.SelectedValue & ",id_reconexion=" & DropDownList6.SelectedValue & ",id_deuda=" & DropDownList7.SelectedValue & " where id_detalle=" & TextBox1.Text & " ")
        contDetalle = 0
        Response.Redirect("Detalle_Factura.aspx")
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If MsgBox("¿Esta seguro de eliminar este registro ?", MsgBoxStyle.YesNo, "Información") = MsgBoxResult.Yes Then
            Call ejecutar("delete from Detalle_Factura where id_detalle=" & TextBox1.Text & " ")
            contDetalle = 0
            Response.Redirect("Detalle_Factura.aspx")
        Else
            Exit Sub
        End If
    End Sub
End Class