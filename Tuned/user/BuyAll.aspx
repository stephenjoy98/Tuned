<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="BuyAll.aspx.cs" Inherits="Tuned.user.BuyAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 1259px;
            height: 365px;
        }
        .auto-style25 {
            width: 419px;
        }
        .auto-style31 {
            width: 419px;
            text-align: right;
            height: 23px;
        }
        .auto-style37 {
            height: 23px;
            width: 165px;
        }
        .auto-style38 {
            height: 23px;
            width: 166px;
        }
        .auto-style39 {
            width: 80px;
            text-align: center;
        }
        .auto-style40 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style25" rowspan="4">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25" rowspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table style="width:100%;" border="1">
                            <tr>
                                <td class="auto-style39" rowspan="2">
                                    <asp:Image ID="Image1" runat="server" Height="75px" Width="75px" ImageUrl='<%# Bind("imagepath") %>' />
                                </td>
                                <td class="auto-style40" colspan="2">Name:&nbsp;
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37">Type:&nbsp;
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                </td>
                                <td class="auto-style38">Price:&nbsp;
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [Id], [productId], [name], [type], [price], [imagepath] FROM [Cart] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">Your order total:&nbsp; <strong>
                <asp:Label ID="TotalPrice" runat="server"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Button ID="Confirm" runat="server" CssClass="button2" OnClick="Confirm_Click" Text="Confirm Order" />
            </td>
        </tr>
    </table>
</asp:Content>
