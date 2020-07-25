<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="Tuned.admin.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1283px;">
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <h1>List of Products</h1>
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
            <td style="width: 50%; text-align: center;">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table style="width: 617px; height: 140px;" border="1">
                            <tr>
                                <td rowspan="5" style="width: 140px">
                                    <asp:Image ID="Image3" runat="server" Height="130px" Width="130px" ImageUrl='<%# Bind("imagepath") %>' />
                                </td>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Product ID:&nbsp; </strong> </td>
                                <td style="text-align: left">&nbsp;&nbsp;
                                    <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' style="font-family: 'Times New Roman'" />
                                </td>
                                <td style="width: 140px" rowspan="5">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Name:&nbsp; </strong> </td>
                                <td style="text-align: left">&nbsp; &nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Type:&nbsp; </strong> </td>
                                <td style="text-align: left">&nbsp; &nbsp;<asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Price:&nbsp; </strong> </td>
                                <td style="text-align: left">&nbsp; &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Seller:&nbsp; </strong> </td>
                                <td style="text-align: left">&nbsp; &nbsp;<asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [productId], [name], [type], [price], [imagepath], [email] FROM [ProductDetails]"></asp:SqlDataSource>
            </td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
