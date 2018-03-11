<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBMS.Master" AutoEventWireup="true" CodeBehind="TechDetails.aspx.cs" Inherits="ComputerServiceShop.Pages.TechDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="158px" Width="916px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="RePassword" HeaderText="Re-Password" SortExpression="RePassword" />
            <asp:BoundField DataField="Address1" HeaderText="Address 1" SortExpression="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address 2" SortExpression="Address2" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TechLogIN] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TechLogIN] ([Name], [Password], [RePassword], [Email], [Address1], [Address2], [Phone]) VALUES (@Name, @Password, @RePassword, @Email, @Address1, @Address2, @Phone)" SelectCommand="SELECT [Id], [Name], [Password], [RePassword], [Email], [Address1], [Address2], [Phone] FROM [TechLogIN] WHERE ([Name] = @Name)" UpdateCommand="UPDATE [TechLogIN] SET [Name] = @Name, [Password] = @Password, [RePassword] = @RePassword, [Email] = @Email, [Address1] = @Address1, [Address2] = @Address2, [Phone] = @Phone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="RePassword" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Name" SessionField="Name" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="RePassword" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
