<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage3.master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Tuned.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" width="94%"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Button ID="Search" runat="server" Text="Search" CssClass="button2" OnClick="Search_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource2" BorderColor="Black" GridLines="Both" OnItemCommand="ItemCommand" >
        <ItemTemplate>
            <table style="width: 100%; height: 115px;" border="1">
                <tr>
                    <td rowspan="5" style="height: 111px; text-align: center; width: 170px">
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("imagepath") %>' />
                    </td>
                    <td style="height: 25px; width: 500px"><strong>Product Id:</strong>
                        <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                    </td>
                    <td rowspan="5" style="height: 111px; width: 114px; vertical-align: top">
                        <table style="width: 114%; height: 130px;">
                            <tr>
                                <td style="text-align: center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Button ID="Buy" runat="server" CssClass="button2" Text="Buy" CommandName="Buy" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Button ID="AddToCart" runat="server" CssClass="button2" Text="Add to Cart" CommandName="Add" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; height: 70px;">
                                    <asp:Button ID="View2" runat="server" CssClass="button2" Text="View Product" CommandName="View2" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px"><strong>Name:</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px"><strong>Type:</strong>
                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px"><strong>Price:</strong>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [imagepath], [description], [price], [type], [name], [productId] FROM [ProductDetails] WHERE (([type] LIKE '%' + @type + '%') AND ([name] LIKE '%' + @name + '%'))">
        <SelectParameters>
            <asp:SessionParameter Name="type" SessionField="search" Type="String" />
            <asp:SessionParameter Name="name" SessionField="search" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
<br />
<asp:Label ID="Label1" runat="server"></asp:Label>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" BorderColor="Black" GridLines="Both" OnItemCommand="ItemCommand" >
        <ItemTemplate>
            <table style="width: 100%; height: 115px;" border="1">
                <tr>
                    <td rowspan="5" style="height: 111px; text-align: center; width: 170px">
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("imagepath") %>' />
                    </td>
                    <td style="height: 25px; width: 500px"><strong>Product Id:</strong>
                        <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                    </td>
                    <td rowspan="5" style="height: 111px; width: 125px;vertical-align: top">
                        <table style="width: 108%; height: 130px;">
                            <tr>
                                <td style="text-align: center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Button ID="Buy" runat="server" CssClass="button2" Text="Buy" CommandName="Buy" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Button ID="AddToCart" runat="server" CssClass="button2" Text="Add to Cart" CommandName="Add" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; height: 70px;">
                                    <asp:Button ID="View1" runat="server" CssClass="button2" Text="View Product" CommandName="View1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px"><strong>Name:</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px"><strong>Type:</strong>
                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px"><strong>Price:</strong>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [name], [type], [price], [description], [imagepath], [productId] FROM [ProductDetails]">
    </asp:SqlDataSource>
</asp:Content>
