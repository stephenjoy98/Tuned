<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="InstructorView.aspx.cs" Inherits="Tuned.admin.InstructorView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1283px;">
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 50%; text-align: center;">
                <h1>List of Instructors</h1>
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
                        <table style="width:617px; height: 140px;" border="1">
                            <tr>
                                <td rowspan="4" style="width: 130px; text-align: right;">
                                    <asp:Image ID="Image3" runat="server" Height="130px" Width="130px" ImageUrl='<%# Bind("imagepath") %>' />
                                </td>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Name:</strong></td>
                                <td style="width: 226px; text-align: left">&nbsp;&nbsp;<asp:Label ID="fLabel" runat="server" Text='<%# Eval("firstname") %>' style="font-family: 'Times New Roman'" />
                                    &nbsp;<asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' style="font-family: 'Times New Roman'" />
                                </td>
                                <td style="width: 140px" rowspan="4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Email:</strong></td>
                                <td style="width: 226px; text-align: left">&nbsp;
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right; font-family: 'Trebuchet MS';"><strong>Contact No:</strong></td>
                                <td style="width: 226px; text-align: left">&nbsp;&nbsp;<asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' style="font-family: 'Times New Roman'" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right"><strong></strong></td>
                                <td style="width: 226px; text-align: left">&nbsp;</td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [email], [cno], [imagepath], [firstname], [lastname] FROM [InstructorDetails] ORDER BY [firstname], [lastname], [email]"></asp:SqlDataSource>
            </td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%; height: 21px;"></td>
            <td style="width: 50%; height: 21px;"></td>
            <td style="width: 25%; height: 21px;"></td>
        </tr>
    </table>
</asp:Content>
