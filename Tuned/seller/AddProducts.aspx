<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="Tuned.seller.AddProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 1259px;
            height: 363px;
        }
        .auto-style43 {
            height: 36px;
            width: 209px;
        }
        .auto-style44 {
            height: 36px;
            width: 210px;
        }
        .auto-style45 {
            height: 68px;
            width: 209px;
        }
        .auto-style46 {
            text-align: right;
            height: 36px;
            width: 209px;
        }
        .auto-style47 {
            text-align: left;
            height: 36px;
            width: 210px;
        }
        .auto-style48 {
            height: 68px;
            width: 210px;
        }
        .auto-style49 {
            height: 70px;
            width: 209px;
        }
        .auto-style52 {
            height: 70px;
            width: 210px;
        }
        .auto-style53 {
            height: 37px;
            width: 209px;
        }
        .auto-style54 {
            height: 37px;
            width: 210px;
        }
        .auto-style55 {
            text-align: center;
        }
        .auto-style90 {
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF0000;
        }
        .auto-style91 {
            height: 37px;
            text-align: center;
        }
        .auto-style92 {
            color: #009900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45" rowspan="2">&nbsp;</td>
            <td class="auto-style45" rowspan="2">&nbsp;</td>
            <td class="auto-style46">Name: </td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <strong>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style90" ErrorMessage="*cannot be empty" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                </strong>
                </td>
            <td class="auto-style48" rowspan="2">&nbsp;</td>
            <td class="auto-style48" rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">Category: </td>
            <td class="auto-style47">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Trumpets</asp:ListItem>
                    <asp:ListItem>Guitars</asp:ListItem>
                    <asp:ListItem>Flutes</asp:ListItem>
                    <asp:ListItem>Drums</asp:ListItem>
                    <asp:ListItem>Keyboards</asp:ListItem>
                    <asp:ListItem Value="Microphones">Microphones</asp:ListItem>
                    <asp:ListItem>Headphones</asp:ListItem>
                    <asp:ListItem>Synthesizers</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style45" rowspan="2">&nbsp;</td>
            <td class="auto-style45" rowspan="2">&nbsp;</td>
            <td class="auto-style46">Price: </td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                <br />
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style90" ErrorMessage="*cannot be empty" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" CssClass="auto-style90" ErrorMessage=" " ControlToValidate="TextBox2" ValidationExpression="(^[0-9]*$)" Display="Dynamic"></asp:RegularExpressionValidator>
                </strong>
                </td>
            <td class="auto-style48" rowspan="2">&nbsp;</td>
            <td class="auto-style48" rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">Description: </td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="auto-style90" ErrorMessage="*cannot be empty" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
                </strong>
                </td>
        </tr>
        <tr>
            <td class="auto-style45" rowspan="2">&nbsp;</td>
            <td class="auto-style45" rowspan="2">&nbsp;</td>
            <td class="auto-style46">Quantity: </td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
                <strong>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style90" ErrorMessage="*cannot be empty" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="auto-style90" ErrorMessage=" " ControlToValidate="TextBox4" ValidationExpression="((^[0-9]*$))" Display="Dynamic"></asp:RegularExpressionValidator>
                </strong>
                </td>
            <td class="auto-style48" rowspan="2">&nbsp;</td>
            <td class="auto-style48" rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">Upload Image: </td>
            <td class="auto-style47">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="auto-style90" ErrorMessage="*Please select an image" ControlToValidate="FileUpload1" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" CssClass="auto-style90" ErrorMessage="*(.png|.jpg|.gif)" ControlToValidate="FileUpload1" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$" Display="Dynamic"></asp:RegularExpressionValidator>
                </strong>
                </td>
        </tr>
        <tr>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style55" colspan="2">
                <asp:Button ID="Add" runat="server" CssClass="button2" Text="Add Product" OnClick="Add_Click" />
            </td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style91" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style92"></asp:Label>
            </td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
