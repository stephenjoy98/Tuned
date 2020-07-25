<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Tuned.admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1283px;">
        <tr>
            <td colspan="6" style="text-align: center">
                <h1>Admin Login</h1>
            </td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px; text-align: right">
                <h3><strong>Username:&nbsp; </strong></h3>
            </td>
            <td style="width: 214px; text-align: left">&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px; text-align: right">
                <h3><strong>Password:&nbsp; </strong></h3>
            </td>
            <td style="width: 214px; text-align: left">&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="text-align: center;" colspan="2">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
            </td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="text-align: center;" colspan="2">
                <asp:Button ID="Login" runat="server" CssClass="button2" Text="Login" OnClick="Login_Click" />
            </td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
            <td style="width: 214px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
