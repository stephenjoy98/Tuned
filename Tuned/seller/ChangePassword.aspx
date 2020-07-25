<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Tuned.seller.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style91 {
            color: #FF0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 100%;">
        <tr>
            <td colspan="2" style="height: 21px; text-align: center">
                <h1>Change Password</h1>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 641px; height: 21px; text-align: right; font-family: 'Trebuchet MS'"><strong>Old Password:&nbsp; </strong></td>
            <td style="width: 642px; height: 21px; text-align: left">&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*cannot be empty" ControlToValidate="TextBox1" Display="Dynamic" CssClass="auto-style91"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 641px; height: 21px; text-align: right; font-family: 'Trebuchet MS'"><strong>New Password:&nbsp; </strong></td>
            <td style="width: 642px; height: 21px; text-align: left">&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*cannot be empty" ControlToValidate="TextBox2" Display="Dynamic" CssClass="auto-style91"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="auto-style91" ErrorMessage="*8 to 32 characters, at least one letter and one number" ControlToValidate="TextBox2" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,32}$" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 641px; height: 21px; text-align: right; font-family: 'Trebuchet MS'"><strong>ConfirmPassword:&nbsp; </strong></td>
            <td style="width: 642px; height: 21px; text-align: left">&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*cannot be empty" ControlToValidate="TextBox3" Display="Dynamic" CssClass="auto-style91"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="auto-style91" ErrorMessage="*passwords do not match" ControlToValidate="TextBox3" ControlToCompare="TextBox2" Display="Dynamic" style="color: #FF0000"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px; text-align: center; background-color: #FFFFFF;">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px; text-align: center">
                <asp:Button ID="Change" runat="server" Text="Submit" CssClass="button2" OnClick="Change_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px; text-align: center">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
