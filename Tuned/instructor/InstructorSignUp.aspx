<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="InstructorSignUp.aspx.cs" Inherits="Tuned.instructor.InstructorSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 1259px;
            height: 363px;
        }
        .auto-style26 {
            height: 42px;
        }
        .auto-style27 {
            height: 43px;
        }
        .auto-style34 {
            height: 43px;
            text-align: center;
        }
        .auto-style35 {
            height: 42px;
            text-align: center;
        }
        .auto-style36 {
            height: 42px;
            width: 628px;
            text-align: right;
        }
        .auto-style37 {
            height: 42px;
            width: 629px;
            text-align: left;
        }
        .auto-style91 {
            color: #FF0000;
        }
        </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style35" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">Email:&nbsp; </td>
            <td class="auto-style37">&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;<strong><br />
                </strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style91"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*cannot be empty" ControlToValidate="TextBox1" Display="Dynamic" CssClass="auto-style91"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*invalid email" ControlToValidate="TextBox1" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" Display="Dynamic" CssClass="auto-style91"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Contact No:&nbsp; </td>
            <td class="auto-style37">&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                &nbsp;<strong><br />
                </strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*cannot be empty" ControlToValidate="TextBox2" Display="Dynamic" CssClass="auto-style91"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" CssClass="auto-style91" ErrorMessage="*invalid number" ControlToValidate="TextBox2" ValidationExpression="(\d{10})" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Password:&nbsp; </td>
            <td class="auto-style37">&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;<strong><br />
                </strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*cannot be empty" ControlToValidate="TextBox3" Display="Dynamic" CssClass="auto-style91"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="auto-style91" ErrorMessage="*8 to 32 characters, at least one letter and one number" ControlToValidate="TextBox3" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,32}$" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36">Password:&nbsp; </td>
            <td class="auto-style37">&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;<strong><br />
                </strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*cannot be empty" ControlToValidate="TextBox4" Display="Dynamic" CssClass="auto-style91"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="auto-style91" ErrorMessage="*passwords do not match" ControlToValidate="TextBox4" ControlToCompare="TextBox3" Display="Dynamic" style="color: #FF0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34" colspan="2">
                <asp:Button ID="Register" runat="server" CssClass="button2" Text="Register" OnClick="Register_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style27" colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>