<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Tuned.admin.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1283px;">
        <tr>
            <td style="height: 21px; width: 427px"></td>
            <td style="height: 21px; width: 428px; text-align: center">
                <h1>Admin Panel</h1>
            </td>
            <td style="height: 21px; width: 428px"></td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px; text-align: center">
                <asp:Button ID="UserView" runat="server" Text="View User Details" CssClass="button1" Width="170px" style="vertical-align: middle" PostBackUrl="~/admin/UserView.aspx" />
            </td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px; text-align: center">&nbsp;</td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px; text-align: center">
                <asp:Button ID="SellerView" runat="server" Text="View Seller Details" CssClass="button1" Width="170px" style="vertical-align: middle" PostBackUrl="~/admin/SellerView.aspx"/>
            </td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px; text-align: center">&nbsp;</td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px; text-align: center">
                <asp:Button ID="InstructorView" runat="server" Text="View Instructor Details" CssClass="button1" Width="170px" style="vertical-align: middle" PostBackUrl="~/admin/InstructorView.aspx"/>
            </td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px; text-align: center">&nbsp;</td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px; text-align: center">
                <asp:Button ID="ProductView" runat="server" Text="View Product Details" CssClass="button1" Width="170px" style="vertical-align: middle" PostBackUrl="~/admin/ProductView.aspx"/>
            </td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 427px">&nbsp;</td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
            <td style="height: 21px; width: 428px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
