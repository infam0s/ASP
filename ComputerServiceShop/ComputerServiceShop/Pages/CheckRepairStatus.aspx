<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="CheckRepairStatus.aspx.cs" Inherits="ComputerServiceShop.Pages.CheckRepairStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="RepairId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="RepairId" HeaderText="RepairId" InsertVisible="False" ReadOnly="True" SortExpression="RepairId" />
            <asp:BoundField DataField="CName" HeaderText="Customer Name" SortExpression="CName" />
            <asp:BoundField DataField="DeviceName" HeaderText="Device Name" SortExpression="DeviceName" />
            <asp:BoundField DataField="DeviceType" HeaderText="Device Type" SortExpression="DeviceType" />
            <asp:BoundField DataField="RepairType" HeaderText="Repair Type" SortExpression="RepairType" />
            <asp:BoundField DataField="DeviceDescription" HeaderText="Device Description" SortExpression="DeviceDescription" />
            <asp:BoundField DataField="RepairName" HeaderText="Repair Name" SortExpression="RepairName" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate" />
            <asp:BoundField DataField="Repaired" HeaderText="Repair Status (Y/N)" SortExpression="Repaired" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [RepairOrder] WHERE [RepairId] = @RepairId" InsertCommand="INSERT INTO [RepairOrder] ([DeviceName], [DeviceType], [RepairType], [DeviceDescription], [custId_FK], [RepairName], [AppointmentDate], [Repaired], [CName]) VALUES (@DeviceName, @DeviceType, @RepairType, @DeviceDescription, @custId_FK, @RepairName, @AppointmentDate, @Repaired, @CName)" SelectCommand="SELECT [RepairId], [DeviceName], [DeviceType], [RepairType], [DeviceDescription], [custId_FK], [RepairName], [AppointmentDate], [Repaired], [CName] FROM [RepairOrder] WHERE ([CName] = @CName)" UpdateCommand="UPDATE [RepairOrder] SET [DeviceName] = @DeviceName, [DeviceType] = @DeviceType, [RepairType] = @RepairType, [DeviceDescription] = @DeviceDescription, [custId_FK] = @custId_FK, [RepairName] = @RepairName, [AppointmentDate] = @AppointmentDate, [Repaired] = @Repaired, [CName] = @CName WHERE [RepairId] = @RepairId">
        <DeleteParameters>
            <asp:Parameter Name="RepairId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DeviceName" Type="String" />
            <asp:Parameter Name="DeviceType" Type="String" />
            <asp:Parameter Name="RepairType" Type="String" />
            <asp:Parameter Name="DeviceDescription" Type="String" />
            <asp:Parameter Name="custId_FK" Type="Int32" />
            <asp:Parameter Name="RepairName" Type="String" />
            <asp:Parameter DbType="Date" Name="AppointmentDate" />
            <asp:Parameter Name="Repaired" Type="String" />
            <asp:Parameter Name="CName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="CName" SessionField="Name" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="DeviceName" Type="String" />
            <asp:Parameter Name="DeviceType" Type="String" />
            <asp:Parameter Name="RepairType" Type="String" />
            <asp:Parameter Name="DeviceDescription" Type="String" />
            <asp:Parameter Name="custId_FK" Type="Int32" />
            <asp:Parameter Name="RepairName" Type="String" />
            <asp:Parameter DbType="Date" Name="AppointmentDate" />
            <asp:Parameter Name="Repaired" Type="String" />
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="RepairId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
