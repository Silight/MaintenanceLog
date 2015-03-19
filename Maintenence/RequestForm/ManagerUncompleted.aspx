<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerUncompleted.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="refresh" content="240" />
    <title>Maintenance Request Log - Incompleted</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
            color: #000084;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 class="auto-style1">Maintenance Request Log - Not Completed</h1>
    </div>
    <div class ="nav">
        <ul>
        </ul>
        <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Size="Large" Width="155px">
            <DynamicHoverStyle BackColor="#99CCFF" BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Underline="True" ForeColor="#000099" />
            <DynamicMenuItemStyle BackColor="#000099" Font-Bold="True" ForeColor="#CCCCFF" />
            <Items>
                <asp:MenuItem Text="Navigation Menu" Value="Request Log Manager">
                    <asp:MenuItem NavigateUrl="~/Manager.aspx" Text="All Requests" Value="All Requests"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ManagerComplete.aspx" Text="Completed" Value="Completed"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ManagerUncompleted.aspx" Text="Incomplete" Value="Incomplete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Request Form" Value="Request Form"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    <div class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" PageSize="20">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick = "return confirm('Are you sure? This is permanent.')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Building" HeaderText="Building" SortExpression="Building" />
                <asp:BoundField DataField="Ext" HeaderText="Ext" SortExpression="Ext" />
                <asp:BoundField DataField="Urgency" HeaderText="Urgency" SortExpression="Urgency" />
                <asp:BoundField DataField="Problem" HeaderText="Problem" SortExpression="Problem" />
                <asp:CheckBoxField DataField="Complete" HeaderText="Complete" SortExpression="Complete" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MaintenanceWorkOrdersConnectionString %>" DeleteCommand="DELETE FROM [User_Data] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [User_Data] ([Name], [Department], [Building], [Ext], [Urgency], [Problem], [Complete]) VALUES (@Name, @Department, @Building, @Ext, @Urgency, @Problem, @Complete)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User_Data] WHERE ([Complete] IS NULL)" UpdateCommand="UPDATE [User_Data] SET [Name] = @Name, [Department] = @Department, [Building] = @Building, [Ext] = @Ext, [Urgency] = @Urgency, [Problem] = @Problem, [Complete] = @Complete WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([Building] = @original_Building) OR ([Building] IS NULL AND @original_Building IS NULL)) AND (([Ext] = @original_Ext) OR ([Ext] IS NULL AND @original_Ext IS NULL)) AND (([Urgency] = @original_Urgency) OR ([Urgency] IS NULL AND @original_Urgency IS NULL)) AND (([Problem] = @original_Problem) OR ([Problem] IS NULL AND @original_Problem IS NULL)) AND (([Complete] = @original_Complete) OR ([Complete] IS NULL AND @original_Complete IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Department" Type="String" />
                <asp:Parameter Name="Building" Type="String" />
                <asp:Parameter Name="Ext" Type="Int32" />
                <asp:Parameter Name="Urgency" Type="String" />
                <asp:Parameter Name="Problem" Type="String" />
                <asp:Parameter Name="Complete" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Department" Type="String" />
                <asp:Parameter Name="Building" Type="String" />
                <asp:Parameter Name="Ext" Type="Int32" />
                <asp:Parameter Name="Urgency" Type="String" />
                <asp:Parameter Name="Problem" Type="String" />
                <asp:Parameter Name="Complete" Type="Boolean" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Department" Type="String" />
                <asp:Parameter Name="original_Building" Type="String" />
                <asp:Parameter Name="original_Ext" Type="Int32" />
                <asp:Parameter Name="original_Urgency" Type="String" />
                <asp:Parameter Name="original_Problem" Type="String" />
                <asp:Parameter Name="original_Complete" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
