<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Tuned.user.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 1259px;
            height: 363px;
        }
        .auto-style32 {
            text-align: center;
            height: 60px;
            width: 419px;
        }
        .auto-style33 {
            height: 60px;
            width: 419px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style15" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style32">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" BorderColor="Black" GridLines="Both" OnItemCommand="ItemCommand" Width="650px" >
        <ItemTemplate>
            <table style="width: 100%; height: 115px;" border="1">
                <tr>
                    <td rowspan="5" style="height: 111px; text-align: center; width: 170px">
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("imagepath") %>' />
                    </td>
                    <td style="height: 25px; width: 500px" class="auto-style13"><strong>Product Id:</strong>
                        <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text='<%# Eval("Id") %>'></asp:Label>
                    </td>
                    <td rowspan="5" style="height: 111px; width: 125px;vertical-align: top">
                        <table style="width: 116%; height: 130px;">
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
                                    <asp:Button ID="Delete" runat="server" CssClass="button2" Text="Delete" CommandName="Delete" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; height: 70px;">
                                    <asp:Button ID="View" runat="server" CssClass="button2" Text="View Product" CommandName="View" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px" class="auto-style13"><strong>Name:</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px" class="auto-style13"><strong>Type:</strong>
                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px; width: 500px" class="auto-style13"><strong>Price:</strong>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <FooterTemplate>
            <asp:Button ID="BuyAll" Visible='<%#bool.Parse((DataList1.Items.Count>0).ToString())%>' runat="server" CommandName="BuyAll" CssClass="button2" OnClick="BuyAll_Click" Text="Buy All" />
            <asp:Label  ID="lblNoRecord" Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>' runat="server" Text="Your cart is empty. Just add something!"></asp:Label>
            <br />
        </FooterTemplate>
    </asp:DataList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [productId], [name], [price], [type], [imagepath] FROM [Cart] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        </table>
</asp:Content>