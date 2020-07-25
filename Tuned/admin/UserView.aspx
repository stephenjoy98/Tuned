<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="Tuned.admin.UserView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <h1>List of Users</h1>
            </td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">&nbsp;</td>
            <td style="width: 20%">&nbsp;</tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="email" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table style="width:617px;" border="1">
                            <tr>
                                <td style="text-align: right; width: 100px; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;"><strong>Email: </strong></td>
                                <td style="width: 154px; text-align: left">&nbsp;
                                    <asp:Label ID="emailLabel" runat="server" style="font-family: 'Times New Roman'" Text='<%# Eval("email") %>' />
                                </td>
                                <td rowspan="2" style="width: 154px">&nbsp;</td>
                                <td rowspan="2" style="width: 155px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 100px; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;"><strong>Contact No: </strong></td>
                                <td style="width: 154px; text-align: left">&nbsp;
                                    <asp:Label ID="cnoLabel" runat="server" style="font-family: 'Times New Roman'" Text='<%# Eval("cno") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [cno], [email] FROM [UserDetails] ORDER BY [email]"></asp:SqlDataSource>
            </td>
            <td style="width: 25%">&nbsp;</tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">&nbsp;</td>
            <td style="width: 20%">&nbsp;</tr>
    </table>
</asp:Content>
