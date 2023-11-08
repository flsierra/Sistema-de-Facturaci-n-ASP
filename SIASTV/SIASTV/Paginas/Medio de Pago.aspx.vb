Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Partial Class Transaccion
    Inherits System.Web.UI.Page
    Public ds As DataSet


    Private Sub Transaccion_Init(sender As Object, e As EventArgs) Handles Me.Init
        Try
            cnn = New SqlConnection
            cnn.ConnectionString = "Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\ASOCUCAITA.mdf;Integrated Security=True"
            Dim sql As String = "select * from Medio_Pago"
            Dim da As New SqlDataAdapter(sql, cnn)
            ds = New DataSet
            da.Fill(ds, "Medio_Pago")
            TextBox1.Text = ds.Tables("Medio_Pago").Rows(0).Item("id_medio")
            TextBox2.Text = ds.Tables("Medio_Pago").Rows(0).Item("Entidad")
            TextBox3.Text = ds.Tables("Medio_Pago").Rows(0).Item("Dirección")

            Call cargarcombo("select * from Mensualidad", DropDownList1, "id_mensualidad", "Mes")
            Call cargarcombo("select * from Detalle_Factura", DropDownList3, "id_detalle", "Total")
            Call cargarcombo("select * from Usuario", DropDownList2, "id_usuario", "Nombre")
            Calendar1.SelectedDate = ds.Tables("Medio_Pago").Rows(0).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Medio_Pago").Rows(0).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Medio_Pago").Rows(0).Item("id_detalle")
            DropDownList2.SelectedValue = ds.Tables("Medio_Pago").Rows(0).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Medio_Pago").Rows(0).Item("id_detalle")

        Catch ex As Exception
            MsgBox("Error de conexion :" + ex.Message, MsgBoxStyle.Information, "Error")
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        contMedio = 0
        TextBox1.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_medio")
        TextBox2.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Entidad")
        TextBox3.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Dirección")
        Calendar1.SelectedDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
        DropDownList2.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        contMedio = contMedio - 1
        If contMedio < 0 Then
            contMedio = contMedio + 1
            TextBox1.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_medio")
            TextBox2.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Entidad")
            TextBox3.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Dirección")
            Calendar1.SelectedDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
            DropDownList2.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
        Else
            TextBox1.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_medio")
            TextBox2.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Entidad")
            TextBox3.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Dirección")
            Calendar1.SelectedDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
            Calendar1.VisibleDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
            DropDownList1.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
            DropDownList2.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_usuario")
            DropDownList3.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
        End If

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        contMedio = contMedio + 1
        If contMedio >= ds.Tables("Medio_Pago").Rows.Count Then
            contMedio = ds.Tables("Medio_Pago").Rows.Count
            contMedio = contMedio - 1
        End If
        TextBox1.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_medio")
        TextBox2.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Entidad")
        TextBox3.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Dirección")
        Calendar1.SelectedDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
        DropDownList2.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        contMedio = ds.Tables("Medio_Pago").Rows.Count
        contMedio = contMedio - 1
        TextBox1.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_medio")
        TextBox2.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Entidad")
        TextBox3.Text = ds.Tables("Medio_Pago").Rows(contMedio).Item("Dirección")
        Calendar1.SelectedDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
        Calendar1.VisibleDate = ds.Tables("Medio_Pago").Rows(contMedio).Item("Fecha")
        DropDownList1.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
        DropDownList2.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_usuario")
        DropDownList3.SelectedValue = ds.Tables("Medio_Pago").Rows(contMedio).Item("id_detalle")
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
        Call ejecutar("insert into Medio_Pago (Entidad,Dirección,Fecha,id_detalle,id_usuario,id_detalle) values( '" & TextBox2.Text & "','" & TextBox3.Text & "', '" & Calendar1.SelectedDate & "'," & DropDownList1.SelectedValue & "," & DropDownList2.SelectedValue & " ," & DropDownList3.SelectedValue & ")")
        Button3.Enabled = False
        Button4.Enabled = False
        Button8.Enabled = False
        contMedio = 0
        Response.Redirect("Medio de Pago.aspx")
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Call ejecutar("update Medio_Pago set Entidad='" & TextBox2.Text & "', id_detalle=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & ", id_detalle=" & DropDownList3.SelectedValue & " where id_medio=" & TextBox1.Text & " ")
        Call ejecutar("update Medio_Pago set Numero_Cuenta='" & TextBox3.Text & "', id_detalle=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & ", id_detalle=" & DropDownList3.SelectedValue & " where  id_medio=" & TextBox1.Text & " ")
        Call ejecutar("update Medio_Pago set Fecha='" & Calendar1.SelectedDate & "', id_detalle=" & DropDownList1.SelectedValue & ", id_usuario=" & DropDownList2.SelectedValue & "id_detalle=" & DropDownList3.SelectedValue & "  where id_medio=" & TextBox1.Text & " ")
        contMedio = 0
        Response.Redirect("Medio de Pago.aspx")
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If MsgBox("¿Esta seguro de eliminar este registro ?", MsgBoxStyle.YesNo, "Información") = MsgBoxResult.Yes Then
            Call ejecutar("delete from Medio_Pago where id_medio=" & TextBox1.Text & " ")
            contMedio = 0
            Response.Redirect("Medio de Pago.aspx")
        Else
            Exit Sub
        End If
    End Sub
End Class