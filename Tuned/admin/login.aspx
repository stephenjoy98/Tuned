<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #form1 {
            text-align: center;
        }
        .auto-style2 {
            color: #000000;
        }
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</head>
<body style="color: #000000; background-color: #2D2D2D">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style4" style="font-size: x-large; font-family: 'Trebuchet MS'">Login Page</h1>
            <p class="auto-style4" style="font-size: x-large; font-family: 'Trebuchet MS'">
                &nbsp;</p>
        </div>
        <span class="auto-style2"><span class="auto-style3">
        <p class="auto-style1">
            Username:
            </span></span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <span class="auto-style3">Password:
            </span>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="auto-style3"></asp:TextBox>
        </p>
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" />
        </div>
    &nbsp;<br class="auto-style2" />
&nbsp;<asp:Label ID="Label1" runat="server" style="text-align: center" ForeColor="Red" CssClass="auto-style2"></asp:Label>
    </form>
</body>
</html>
