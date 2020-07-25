<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="SellerView.aspx.cs" Inherits="Tuned.admin.SellerView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <h1>List of Sellers</h1>
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
                <asp:DataList ID="DataList1" runat="server" DataKeyField="email" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table style="width:617px;" border="1">
                            <tr>
                                <td style="text-align: right; width: 100px; font-family: 'Trebuchet MS';"><strong>Name:</strong></td>
                                <td style="width: 154px; text-align: left">&nbsp;
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' style="font-family: 'Times New Roman'" />
                                </td>
                                <td style="width: 154px" rowspan="3">&nbsp;</td>
                                <td style="width: 155px" rowspan="3">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 100px; font-family: 'Trebuchet MS';"><strong>Email: </strong></td>
                                <td style="width: 154px; text-align: left">&nbsp;
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 100px; font-family: 'Trebuchet MS';"><strong>Contact No: </strong></td>
                                <td style="width: 154px; text-align: left">&nbsp;
                                    <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [username], [email], [cno] FROM [SellerDetails] ORDER BY [username], [email]"></asp:SqlDataSource>
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
