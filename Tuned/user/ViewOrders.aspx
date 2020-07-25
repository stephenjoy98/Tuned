<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="Tuned.user.ViewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1283px;">
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table style="width: 617px; height: 150px;" border="1">
                            <tr>
                                <td rowspan="4" style="width: 150px">
                                    <asp:Image ID="Image3" runat="server" Height="140px" Width="140px" ImageUrl='<%# Bind("imagepath") %>' />
                                </td>
                                <td style="width: 100px; text-align: right">Product ID:&nbsp; </td>
                                <td style="width: 250px; text-align: left">&nbsp;
                                    <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                                </td>
                                <td rowspan="4" style="width: 100px">
                                    <asp:Button ID="View" runat="server" CommandName="View" CssClass="button2" Text="View" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right">Name:&nbsp; </td>
                                <td style="width: 250px; text-align: left">&nbsp;
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right">Price:&nbsp; </td>
                                <td style="width: 250px; text-align: left">&nbsp;
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right">Date:&nbsp; </td>
                                <td style="width: 250px; text-align: left">&nbsp;
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [productId], [name], [price], [imagepath], [date] FROM [Purchases] WHERE ([email] = @email) ORDER BY [date], [name]">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
