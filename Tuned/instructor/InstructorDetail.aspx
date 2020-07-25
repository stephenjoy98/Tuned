<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="InstructorDetail.aspx.cs" Inherits="Tuned.instructor.InstructorDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 1259px;
            height: 365px;
        }
        .auto-style25 {
            width: 419px;
        }
        .auto-style26 {
            width: 419px;
            text-align: center;
        }
        .auto-style27 {
            width: 395px;
            height: 115px;
        }
        .auto-style35 {
            height: 23px;
        }
        .auto-style38 {
            height: 160px;
        }
        .auto-style39 {
            width: 197px;
            height: 23px;
            text-align: left;
        }
        .auto-style40 {
            width: 196px;
            height: 23px;
            text-align: left;
        }
        .auto-style41 {
            height: 23px;
            text-align: left;
        }
        .auto-style42 {
            width: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style25" rowspan="3">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25" rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="email" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table border="1" class="auto-style27">
                            <tr>
                                <td class="auto-style38" colspan="2">
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Bind("imagepath") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style35" colspan="2"><strong>
                                    <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                                    </strong>&nbsp; <strong>
                                    <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style40">Email:
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                                <td class="auto-style39">Mobile:
                                    <asp:Label ID="cnoLabel" runat="server" Text='<%# Bind("cno") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41" colspan="2">Interested in teaching:&nbsp;
                                    <asp:Label ID="qualLabel" runat="server" Text='<%# Bind("qual") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41" colspan="2">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td class="auto-style42">Address: </td>
                                            <td>
                                                <asp:Label ID="hnoLabel" runat="server" Text='<%# Bind("hno") %>' />
                                                ,</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style42">&nbsp;</td>
                                            <td>
                                                <asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' />
                                                ,</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style42">&nbsp;</td>
                                            <td>
                                                <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                                ,</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style42">&nbsp;</td>
                                            <td>
                                                <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT [email], [cno], [firstname], [lastname], [hno], [street], [city], [imagepath], [qual], [zip] FROM [InstructorDetails] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="email" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
