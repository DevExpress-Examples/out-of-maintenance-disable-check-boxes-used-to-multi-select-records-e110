<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Grid_Selection_DisableCheckboxes_DisableCheckboxes" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <script type="text/javascript" src="<%=ResolveClientUrl("~/JS/header.js")%>"></script>
    <title>Disable check boxes used to multi-select records</title>
<script type="text/jscript">
</script>
</head>
<body>
    <form id="form1" runat="server">
    
        <br />
        <asp:CheckBox ID="cbDisabled" runat="server" Text="Disable selection checkboxes" AutoPostBack="True" OnCheckedChanged="cbDisabled_CheckedChanged"/>
        <br /><br />
        <dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="AccessDataSource1" KeyFieldName="CustomerID">
             <Columns>
                <dxwgv:GridViewDataColumn FieldName="#" VisibleIndex="1">
                <DataItemTemplate>
                    <input  type="checkbox" <%#IsRowChecked(Container.VisibleIndex)%> <%#IsSelectionCheckboxDisabled()%>  onclick="aspxGVSelectRow('grid', <%#Container.VisibleIndex%>, this.checked);" />
                </DataItemTemplate>
                </dxwgv:GridViewDataColumn>
            <%-- BeginRegion Columns --%>
                <dxwgv:GridViewDataColumn FieldName="ContactName" VisibleIndex="1">
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataColumn FieldName="CompanyName" VisibleIndex="2">
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataColumn FieldName="City" VisibleIndex="3">
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataColumn FieldName="Region" VisibleIndex="4">
                </dxwgv:GridViewDataColumn>
                <dxwgv:GridViewDataColumn FieldName="Country" VisibleIndex="5">
                </dxwgv:GridViewDataColumn>             
        <%-- EndRegion --%>
         </Columns>
    </dxwgv:ASPxGridView>
    <%-- BeginRegion DataSource --%>
     <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Customers]">
    </asp:AccessDataSource>
    <%-- EndRegion --%>
    </form>
</body>
</html>
