<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Tuned.user.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 1259px;
            height: 363px;
        }
        .auto-style31 {
            height: 359px;
            width: 419px;
        }
        .auto-style33 {
            width: 394px;
        }
        .auto-style34 {
            width: 130px;
        }
        .auto-style36 {
            width: 131px;
        }
        .auto-style37 {
            width: 396px;
            height: 161px;
        }
        .auto-style42 {
            height: 23px;
            width: 197px;
            text-align: right;
            vertical-align: top;
        }
        .auto-style43 {
            height: 23px;
            width: 197px;
            text-align: left;
        }
        .auto-style44 {
            width: 419px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style23">
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style44">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="productId" DataSourceID="SqlDataSource1" Width="100%">
                    <EditItemTemplate>
                        productId:
                        <asp:Label ID="productIdLabel1" runat="server" Text='<%# Eval("productId") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        type:
                        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                        <br />
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        description:
                        <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        <br />
                        imagepath:
                        <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        type:
                        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                        <br />
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        description:
                        <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        <br />
                        imagepath:
                        <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table class="auto-style33">
                            <tr>
                                <td class="auto-style34">&nbsp;</td>
                                <td class="auto-style36">
                                    <asp:Image ID="Image1" runat="server" Height="170px" Width="170px" ImageUrl='<%# Bind("imagepath") %>' />
                                </td>
                                <td class="auto-style36">&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <table class="auto-style37" border="1">
                            <tr>
                                <td class="auto-style42"><strong>Product ID:&nbsp; </strong> </td>
                                <td class="auto-style43">
                                    <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style42"><strong>Name:&nbsp; </strong> </td>
                                <td class="auto-style43">
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style42"><strong>Type:&nbsp; </strong> </td>
                                <td class="auto-style43">
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style42"><strong>Price:&nbsp; </strong> </td>
                                <td class="auto-style43">
                                    Rs.
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style42"><strong>Description:&nbsp; </strong> </td>
                                <td class="auto-style43">
                                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style42"><strong>Seller email:&nbsp; </strong> </td>
                                <td class="auto-style43">
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [productId], [name], [type], [price], [description], [imagepath], [email] FROM [ProductDetails] WHERE ([productId] = @productId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="productId" SessionField="product" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        </table>
</asp:Content>
