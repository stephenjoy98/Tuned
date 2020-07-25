<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="InstructorLogin.aspx.cs" Inherits="Tuned.instructor.InstructorLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style99 {
            width: 1259px;
            height: 363px;
        }
        .auto-style103 {
            text-align: center;
            width: 209px;
            height: 52px;
        }
        .auto-style104 {
            text-align: center;
            width: 210px;
            height: 52px;
        }
        .auto-style108 {
            text-align: center;
            height: 51px;
        }
        .auto-style109 {
            height: 52px;
        }
        .auto-style110 {
            text-align: right;
            height: 52px;
        }
        .auto-style111 {
            text-align: left;
            height: 52px;
        }
        .auto-style112 {
            text-align: center;
            height: 52px;
        }
        .auto-style116 {
            width: 209px;
            height: 52px;
        }
        .auto-style117 {
            width: 210px;
            height: 52px;
        }
        .auto-style118 {
            color: #FF0000;
        }
        .auto-style90 {
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF0000;
        }
        .auto-style120 {
            color: #000000;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style99">
        <tr>
            <td class="auto-style108" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style109" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style110" colspan="4"><strong>Email:</strong>&nbsp; </td>
            <td class="auto-style111" colspan="4">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="auto-style90" ErrorMessage="*invalid email" ControlToValidate="TextBox1" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style110" colspan="4"><strong>Password:</strong>&nbsp; </td>
            <td class="auto-style111" colspan="4">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style112" colspan="8">
                <asp:LinkButton ID="Forgot" runat="server" CssClass="auto-style120" OnClick="Forgot_Click">Forgot password?</asp:LinkButton>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style118"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style116">&nbsp;</td>
            <td class="auto-style116">&nbsp;</td>
            <td class="auto-style103">
                &nbsp;</td>
            <td class="auto-style103">
                <asp:Button ID="Login" runat="server" Text="Login" CssClass="button2" OnClick="Login_Click" />
            </td>
            <td class="auto-style104">
                <asp:Button ID="Signup" runat="server" Text="Signup" CssClass="button2" OnClick="Signup_Click" />
            </td>
            <td class="auto-style104">
                &nbsp;</td>
            <td class="auto-style117">&nbsp;</td>
            <td class="auto-style117">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style109" colspan="8">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


