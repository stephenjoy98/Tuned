<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Tuned.user.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 1259px;
            height: 363px;
        }
        .auto-style24 {
            width: 314px;
            height: 359px;
        }
        .auto-style25 {
            width: 315px;
            height: 359px;
        }
        .auto-style32 {
            width: 314px;
            height: 72px;
            text-align: right;
        }
        .auto-style33 {
            width: 150px;
            height: 150px;
        }
        .auto-style34 {
            width: 314px;
            height: 72px;
            text-align: center;
        }
        .auto-style35 {
            text-align: right;
        }
        .auto-style36 {
            height: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style24" rowspan="3">&nbsp;</td>
            <td class="auto-style36" colspan="2">&nbsp;</td>
            <td class="auto-style25" rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">Scan the QRcode to pay via PayTM:&nbsp; </td>
            <td class="auto-style34">
                <img alt="" class="auto-style33" src="PayTM.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style35" colspan="2">
                <asp:Button ID="Next" runat="server" CssClass="button2" OnClick="Next_Click" Text="Next" />
            </td>
        </tr>
        </table>
</asp:Content>
