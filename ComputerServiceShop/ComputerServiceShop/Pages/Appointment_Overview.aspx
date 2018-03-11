<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBMS.Master" AutoEventWireup="true" CodeBehind="Appointment_Overview.aspx.cs" Inherits="ComputerServiceShop.Appointment_Overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Booked Appointment:</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="RepairId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="199px" Width="16px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="RepairId" HeaderText="RepairId" InsertVisible="False" ReadOnly="True" SortExpression="RepairId" />
                <asp:TemplateField HeaderText="Customer Name" SortExpression="CName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CName") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Device Name" SortExpression="DeviceName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DeviceName") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("DeviceName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Device Type" SortExpression="DeviceType">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DeviceType") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("DeviceType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Repair Type" SortExpression="RepairType">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("RepairType") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("RepairType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Device Description" SortExpression="DeviceDescription">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DeviceDescription") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("DeviceDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Repair Name" SortExpression="RepairName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("RepairName") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("RepairName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Appointment Date" SortExpression="AppointmentDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("AppointmentDate") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("AppointmentDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Repair Status(Y/N)" SortExpression="Repaired">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Repaired") %>' Width="75px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Repaired") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
            <EditRowStyle CssClass="GridViewEditRow" /> <%--To fix gridview width in "edit mode"--%>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [RepairOrder] WHERE [RepairId] = @RepairId" InsertCommand="INSERT INTO [RepairOrder] ([DeviceName], [DeviceType], [RepairType], [DeviceDescription], [custId_FK], [RepairName], [AppointmentDate]) VALUES (@DeviceName, @DeviceType, @RepairType, @DeviceDescription, @custId_FK, @RepairName, @AppointmentDate)" SelectCommand="SELECT * FROM [RepairOrder]" UpdateCommand="UPDATE [RepairOrder] SET [DeviceName] = @DeviceName, [DeviceType] = @DeviceType, [RepairType] = @RepairType, [DeviceDescription] = @DeviceDescription, [custId_FK] = @custId_FK, [RepairName] = @RepairName, [AppointmentDate] = @AppointmentDate WHERE [RepairId] = @RepairId">
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
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DeviceName" Type="String" />
                <asp:Parameter Name="DeviceType" Type="String" />
                <asp:Parameter Name="RepairType" Type="String" />
                <asp:Parameter Name="DeviceDescription" Type="String" />
                <asp:Parameter Name="custId_FK" Type="Int32" />
                <asp:Parameter Name="RepairName" Type="String" />
                <asp:Parameter DbType="Date" Name="AppointmentDate" />
                <asp:Parameter Name="RepairId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
