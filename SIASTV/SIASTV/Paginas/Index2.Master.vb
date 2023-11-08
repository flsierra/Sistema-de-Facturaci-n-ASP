Public Class Index2
    Inherits System.Web.UI.MasterPage

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        Label1.Text = "Nombre Usuario" + Nombre_Usuario + Apellido_Usuario


    End Sub

   
End Class