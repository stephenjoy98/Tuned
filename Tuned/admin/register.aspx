<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Project.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body style="color: #FFFFFF; background-color: #2D2D2D">
    <form id="form1" runat="server">
        <div style="background-color: #2D2D2D">
            <h1 class="auto-style1" style="font-family: 'Trebuchet MS'; font-size: x-large">Register</h1>
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Repeat Password:
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Contact Number:&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </p>
            <p class="auto-style1">
&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Register" />
            </p>
        </div>
    </form>
</body>
</html>
