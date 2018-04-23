Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class Grid_Selection_DisableCheckboxes_DisableCheckboxes
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Function IsRowChecked(ByVal visibleIndex As Integer) As String
		If grid.Selection.IsRowSelected(visibleIndex) Then
			Return "checked"
		Else
			Return String.Empty
		End If
	End Function
	Protected Function IsSelectionCheckboxDisabled() As String
		If cbDisabled.Checked Then
			Return "disabled=""disabled"""
		Else
			Return String.Empty
		End If
	End Function
	Protected Sub cbDisabled_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
		grid.DataBind()
	End Sub
End Class
