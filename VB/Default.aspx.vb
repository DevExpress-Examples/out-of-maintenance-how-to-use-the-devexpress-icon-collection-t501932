Imports DevExpress.Web
Imports DevExpress.Web.ASPxThemes
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Reflection
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub OnInit(ByVal e As EventArgs)
        MyBase.OnInit(e)
        Dim button4 As New ASPxButton()
        button4.ID = "RuntimeButton"
        ph.Controls.Add(button4)
        button4.CssClass = "button"
        button4.Image.IconID = DevExpress.Web.ASPxThemes.IconID.NavigationHome32x32
        Dim lc As New LiteralControl("<span>This ASPxButton is created at runtime in PlaceHolder</span>")
        ph.Controls.Add(lc)

    End Sub

    Protected Sub Button2_Init(ByVal sender As Object, ByVal e As EventArgs)
        Dim btn As Button = TryCast(sender, Button)
        btn.CssClass &= " dxIcon_" & IconID.NavigationHome32x32
    End Sub
End Class