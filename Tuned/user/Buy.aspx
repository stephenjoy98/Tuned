<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Tuned.user.Buy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1283px;">
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" Width="639px">
                    <ItemTemplate>
                        <table style="width: 442px; height: 140px;" border="1">
                            <tr>
                                <td rowspan="5" style="width: 140px">
                                    <asp:Image ID="Image3" runat="server" Height="140px" Width="140px" ImageUrl='<%# Bind("imagepath") %>' />
                                </td>
                                <td style="text-align: right; width: 100px">Product ID:&nbsp; </td>
                                <td style="width: 206px; text-align: left">&nbsp;&nbsp;
                                    <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 100px">Name:&nbsp; </td>
                                <td style="width: 206px; text-align: left">&nbsp;&nbsp;
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 100px">Type:&nbsp; </td>
                                <td style="width: 206px; text-align: left">&nbsp; &nbsp;<asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 100px">Price:&nbsp; </td>
                                <td style="width: 206px; text-align: left">&nbsp;&nbsp;
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 100px">Email:&nbsp; </td>
                                <td style="width: 206px; text-align: left">&nbsp;&nbsp;
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [productId], [name], [type], [price], [imagepath], [email] FROM [ProductDetails] WHERE ([productId] = @productId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="productId" SessionField="product" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <asp:Button ID="Confirm" runat="server" CssClass="button2" OnClick="Confirm_Click" Text="Confirm Order" />
            </td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
