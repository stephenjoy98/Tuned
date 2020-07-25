<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="Tuned.user.Bill" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" />

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">--%><%--</asp:Content>--%>
    <style type="text/css">

        .auto-style26 {
            width: 430px;
        }
        .auto-style27 {
            width: 142px;
            text-align: center;
        }
        .auto-style30 {
            width: 143px;
            text-align: center;
        }
        .auto-style29 {
            width: 143px;
            text-align: right;
        }
        </style>
</head>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">--%>
<body>
    <form id="form1" runat="server">
    <table style="width: 1265px; height: 100%;">
        <tr>
            <td style="height: 23px; width: 421px"></td>
            <td style="height: 23px; text-align: center; width: 421px">
                <table border="1" style="width:100%;">
                    <tr>
                        <td>
                            <img alt="" src="../tuned-logo.jpg" style="width: 101px; height: 61px" /></td>
                    </tr>
                    <tr>
                        <td><strong><span style="font-size: large">Your Bill for date </span>
                            <asp:Label ID="Label1" runat="server" style="font-size: large"></asp:Label>
                            </strong>
                            <br />
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table border="0" style="width:100%;">
                            <tr>
                                <td>
                                    <table class="auto-style26">
                                        <tr>
                                            <td class="auto-style27">
                                                <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                                            </td>
                                            <td class="auto-style30">
                                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                            </td>
                                            <td class="auto-style29">----------<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [productId], [name], [price] FROM [PrePurchase] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                            <strong>
                            Total:
                <asp:Label ID="TotalPrice" runat="server"></asp:Label>
                </strong>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 23px; width: 421px"></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 421px"></td>
            <td style="height: 23px; text-align: center; width: 421px">
                <asp:Button ID="Print" runat="server" Text="Print Bill" OnClientClick="javascript:window.print();" />
            </td>
            <td style="height: 23px; width: 421px"></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 421px"></td>
            <td style="height: 23px; text-align: center; width: 421px">&nbsp;</td>
            <td style="height: 23px; width: 421px"></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 421px"></td>
            <td style="height: 23px; text-align: center; width: 421px">
                <asp:Button ID="Continue" runat="server" CssClass="button2" OnClick="Continue_Click" Text="Continue Shopping" />
            </td>
            <td style="height: 23px; width: 421px"></td>
        </tr>
        </table>
    </form>
</body>
<%--</asp:Content>--%>
