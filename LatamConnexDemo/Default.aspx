<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </telerik:RadScriptManager>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
        <telerik:RadAjaxLoadingPanel ID="loadPanel" runat="server">
    </telerik:RadAjaxLoadingPanel>
        <div style="width:800px; margin:0 auto; text-align:center;">
            <h2>Books Inventory</h2>
        </div>
        <div style="margin: 0 auto; width:800px;">
        <telerik:RadAjaxPanel ID="mainPanel" runat="server" LoadingPanelID="loadPanel">
        <telerik:RadGrid ID="gridBooks" runat="server" AutoGenerateColumns="false" 
            OnNeedDataSource="gridBooks_NeedDataSource" AllowFilteringByColumn="true" 
            GroupingSettings-CaseSensitive="false" Width="768px">
            <MasterTableView>
                <Columns>
                    <telerik:GridBoundColumn DataField="NAME" HeaderText ="BOOK NAME" AllowFiltering="true"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AUTHOR" HeaderText="AUTHOR" AllowFiltering="true"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CATEGORY" HeaderText="CATEGORY" AllowFiltering="true"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="YEAR" HeaderText="YEAR"></telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
            </telerik:RadAjaxPanel>
            </div>
    </form>
</body>
</html>
