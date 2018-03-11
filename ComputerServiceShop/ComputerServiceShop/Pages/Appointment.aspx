<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="ComputerServiceShop.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <strong>Please enter booking information below:</strong></p>
    
    <table>
    <tr>
            <td>Full Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Device Type:</td>
            <td>
                <asp:TextBox ID="txtDeviceType" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDeviceType" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Device Name:</td>
            <td>
                <asp:TextBox ID="txtDeviceName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDeviceName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Repair Type:</td>
            <td>
                <asp:DropDownList ID="DropDownListRepairType" runat="server">
                    <asp:ListItem>Personal</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListRepairType" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Repair Name:</td>
            <td>
                <asp:DropDownList ID="DropDownListRepairName" runat="server" >
                    <asp:ListItem>General Computer Repair</asp:ListItem>
                    <asp:ListItem>Software Installation</asp:ListItem>
                    <asp:ListItem>Virus/Spyware Removal</asp:ListItem>
                    <asp:ListItem>Data Recovery</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListRepairName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Device Description:</td>
            <td>
                <asp:TextBox ID="txtDeviceDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDeviceDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Appointment Date:</td>
            <td>
                <asp:Calendar ID="CalAppointmentDate" runat="server"></asp:Calendar>
            </td>
        </tr>
           <tr>
        <td>
                &nbsp;</td>
        </tr> 
        <tr>
            <td>
                <asp:Button ID="btnBookAppointment" runat="server" OnClick="btnBookAppointment_Click" Text="Book Appointment" />
                
            </td>
            <td>&nbsp;</td>
            </tr>
        <tr>
            <td>
                
                <asp:Label ID="lblBookResult" runat="server"></asp:Label>
            </td>
        </tr>
        
       
        </table>
         
        
    
</asp:Content>
