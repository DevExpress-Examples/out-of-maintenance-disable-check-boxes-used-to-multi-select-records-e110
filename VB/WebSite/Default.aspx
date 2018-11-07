<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>Disable check boxes used to multi-select records</title>
</head>
<body>
	<form id="form1" runat="server">
	<dx:ASPxCheckBox ID="chkDisabled" runat="server" Text="Disable selection checkboxes"
		AutoPostBack="true" />
	<br />
	<br />
	<dx:ASPxGridView ID="Grid" runat="server" DataSourceID="AccessDataSource1" KeyFieldName="CustomerID"
		OnCommandButtonInitialize="Grid_CommandButtonInitialize">
		<Columns>
			<dx:GridViewCommandColumn ShowSelectCheckbox="true" />
			<dx:GridViewDataColumn FieldName="ContactName" />
			<dx:GridViewDataColumn FieldName="CompanyName" />
			<dx:GridViewDataColumn FieldName="City" />
			<dx:GridViewDataColumn FieldName="Region" />
			<dx:GridViewDataColumn FieldName="Country" />
		</Columns>
	</dx:ASPxGridView>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
		SelectCommand="SELECT * FROM [Customers]" />
	</form>
</body>
</html>