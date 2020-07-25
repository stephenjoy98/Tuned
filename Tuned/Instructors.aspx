<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage3.master" AutoEventWireup="true" CodeBehind="Instructors.aspx.cs" Inherits="Tuned.Instructors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataKeyField="email" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="ItemCommand">
                    <ItemTemplate>
                        <div style="text-align: center">
                            <table border="1" style="width:100%;">
                                <tr>
                                    <td>
                                        <table style="width: 100%;">
                                            <tr>
                                                <td colspan="2" style="height: 140px">
                                                    <asp:Image ID="Image3" runat="server" Height="130px" Width="130px" ImageUrl='<%# Bind("imagepath") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><strong>
                                                    <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                                                    </strong>&nbsp; <strong>
                                                    <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
                                                    </strong></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 112px; text-align: right"><strong>Teaching:</strong></td>
                                                <td style="width: 112px; text-align: left">&nbsp;<asp:Label ID="qualLabel" runat="server" Text='<%# Eval("qual") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 112px; text-align: right"><strong>City:</strong></td>
                                                <td style="width: 112px; text-align: left">&nbsp;<asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 112px; text-align: right">&nbsp;</td>
                                                <td style="width: 112px; text-align: left">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Button ID="View2" runat="server" CommandName="View2" CssClass="button2" Text="View" />
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' style="color: #FFFFFF" />
                            <br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [email], [firstname], [lastname], [city], [qual], [imagepath] FROM [InstructorDetails] WHERE (([firstname] LIKE '%' + @firstname + '%') AND ([lastname] LIKE '%' + @lastname + '%') AND ([qual] LIKE '%' + @qual + '%') AND ([city] LIKE '%' + @city + '%'))">
                    <SelectParameters>
                        <asp:SessionParameter Name="firstname" SessionField="search" Type="String" />
                        <asp:SessionParameter Name="lastname" SessionField="search" Type="String" />
                        <asp:SessionParameter Name="qual" SessionField="search" Type="String" />
                        <asp:SessionParameter Name="city" SessionField="search" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="email" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="ItemCommand">
                    <ItemTemplate>
                        <div style="text-align: center">
                            <table border="1" style="width:100%;">
                                <tr>
                                    <td>
                                        <table style="width: 100%;">
                                            <tr>
                                                <td colspan="2" style="height: 140px">
                                                    <asp:Image ID="Image3" runat="server" Height="130px" Width="130px" ImageUrl='<%# Bind("imagepath") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><strong>
                                                    <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
                                                    </strong>&nbsp; <strong>
                                                    <asp:Label ID="lastnameLabel" runat="server" Text='<%# Eval("lastname") %>' />
                                                    </strong></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 112px; text-align: right"><strong>Teaching:</strong></td>
                                                <td style="width: 112px; text-align: left">&nbsp;<asp:Label ID="qualLabel" runat="server" Text='<%# Eval("qual") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 112px; text-align: right"><strong>City:</strong></td>
                                                <td style="width: 112px; text-align: left">&nbsp;<asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 112px; text-align: right">&nbsp;</td>
                                                <td style="width: 112px; text-align: left">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Button ID="View1" runat="server" CommandName="View1" CssClass="button2" Text="View" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' style="color: #FFFFFF" />
                            <br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [email], [firstname], [lastname], [city], [qual], [imagepath] FROM [InstructorDetails]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
