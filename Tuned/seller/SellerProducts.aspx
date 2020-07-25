<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="SellerProducts.aspx.cs" Inherits="Tuned.seller.SellerProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 1259px;
            height: 363px;
        }
        .auto-style21 {
            height: 60px;
            width: 209px;
        }
        .auto-style22 {
            height: 60px;
            width: 210px;
        }
        .auto-style23 {
            height: 61px;
            width: 209px;
        }
        .auto-style24 {
            height: 61px;
            width: 210px;
        }
        .auto-style25 {
            width: 803px;
            height: 168px;
        }
        .auto-style28 {
            width: 170px;
            height: 164px;
            text-align: center;
        }
        .auto-style36 {
            text-align: left;
            height: 33px;
            width: 508px;
        }
        .auto-style37 {
            text-align: left;
            height: 34px;
            width: 508px;
        }
        .auto-style38 {
            width: 125px;
            vertical-align: top;
        }
        .auto-style40 {
            text-align: center;
        }
        .auto-style47 {
            width: 170px;
            text-align: center;
        }
        .auto-style48 {
            width: 803px;
        }
        .auto-style50 {
            width: 150px;
            vertical-align: top;
        }
        .auto-style51 {
            width: 508px;
        }
        .auto-style52 {
            height: 60px;
            width: 210px;
            text-align: center;
        }
        .auto-style90 {
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td rowspan="6">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" OnCancelCommand="cancel" OnDeleteCommand="delete" OnEditCommand="edit" OnUpdateCommand="update" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        <table class="auto-style48" border="1">
                            <tr>
                                <td rowspan="7" class="auto-style47">
                                    &nbsp;</td>
                                <td class="auto-style51"><strong>Product ID:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                                </td>
                                <td class="auto-style50" rowspan="7">
                                    <table style="width:100%;">
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style40">
                                                <asp:Button ID="UpdateBtn" runat="server" CssClass="button2" Text="Update" CommandName="update" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style40">
                                                <asp:Button ID="CancelBtn" runat="server" CssClass="button2" Text="Cancel" CommandName="cancel" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style51"><strong>Name:</strong>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style90" Display="Dynamic" ErrorMessage="*cannot be empty"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style51"><strong>Category:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedItem='<%# Bind("type") %>'>
                                        <asp:ListItem Value="Trumpets">Trumpets</asp:ListItem>
                                        <asp:ListItem Value="Guitars">Guitars</asp:ListItem>
                                        <asp:ListItem>Flutes</asp:ListItem>
                                        <asp:ListItem>Drums</asp:ListItem>
                                        <asp:ListItem>Keyboards</asp:ListItem>
                                        <asp:ListItem>Microphones</asp:ListItem>
                                        <asp:ListItem>Headphones</asp:ListItem>
                                        <asp:ListItem>Synthesizers</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style51"><strong>Price:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("price") %>' TextMode="Number"></asp:TextBox>
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style90" Display="Dynamic" ErrorMessage="*cannot be empty"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style51"><strong>Description:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("description") %>' TextMode="MultiLine"></asp:TextBox>
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style90" Display="Dynamic" ErrorMessage="*cannot be empty"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style51"><strong>Stock left:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("amount") %>' TextMode="Number"></asp:TextBox>
                                    <strong>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style90" Display="Dynamic" ErrorMessage="*cannot be empty"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style51"><strong>Replace image:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <strong>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style90" Display="Dynamic" ErrorMessage="*(.png|.jpg|.gif)" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$"></asp:RegularExpressionValidator>
                                    </strong>
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table class="auto-style25" border="1">
                            <tr>
                                <td class="auto-style28" rowspan="6">
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("imagepath") %>' />
                                </td>
                                <td class="auto-style36"><strong>ProductId:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                                </td>
                                <td class="auto-style38" rowspan="6">
                                    <table style="width:100%;">
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style40">
                                                <asp:Button ID="EditBtn" runat="server" CssClass="button2" Text="Edit" CommandName="edit" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style40">
                                                <asp:Button ID="DelBtn" runat="server" CssClass="button2" Text="Delete" CommandName="delete" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>Name:</strong>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>Category:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Price:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Description:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Stock left:</strong>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" 
                    runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [ProductDetails] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style52">
                <asp:Button ID="AddProduct" runat="server" CssClass="button2" OnClick="AddProduct_Click" Text="Add Product" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
