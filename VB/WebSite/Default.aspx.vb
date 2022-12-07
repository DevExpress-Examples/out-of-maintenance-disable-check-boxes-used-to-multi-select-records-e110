﻿Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub

	Protected Sub Grid_CommandButtonInitialize(ByVal sender As Object, ByVal e As ASPxGridViewCommandButtonEventArgs)
		If e.ButtonType = ColumnCommandButtonType.SelectCheckbox Then
			e.Enabled = Not chkDisabled.Checked
		End If
	End Sub
End Class