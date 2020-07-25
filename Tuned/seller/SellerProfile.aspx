<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="SellerProfile.aspx.cs" Inherits="Tuned.seller.SellerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 1259px;
            height: 363px;
        }
        .auto-style29 {
            height: 359px;
            width: 419px;
        }
        .auto-style30 {
            height: 50px;
            width: 419px;
        }
        .auto-style31 {
            height: 121px;
            width: 419px;
            text-align: center;
        }
        .auto-style32 {
            width: 395px;
            height: 161px;
        }
        .auto-style37 {
            height: 23px;
            width: 196px;
            text-align: right;
        }
        .auto-style38 {
            height: 23px;
            width: 197px;
            text-align: left;
        }
        .auto-style39 {
            width: 395px;
        }
        .auto-style40 {
            width: 196px;
        }
        .auto-style41 {
            width: 197px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style29" rowspan="3">&nbsp;</td>
            <td class="auto-style30" style="height: 50px"></td>
            <td class="auto-style29" rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="email" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        <table class="auto-style32">
                            <tr>
                                <td class="auto-style37"><strong>Username:&nbsp; </strong> </td>
                                <td class="auto-style38">
                                    <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Email:&nbsp; </strong> </td>
                                <td class="auto-style38">
                                    <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Contact Number:&nbsp; </strong> </td>
                                <td class="auto-style38">
                                    <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' TextMode="Number" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cnoTextBox" CssClass="auto-style91" Display="Dynamic" ErrorMessage="*invalid number" ValidationExpression="(\d{10})"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Shop Number:&nbsp; </strong> </td>
                                <td class="auto-style38">
                                    <asp:TextBox ID="snoTextBox" runat="server" Text='<%# Bind("sno") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="snoTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Street Name:&nbsp; </strong> </td>
                                <td class="auto-style38">
                                    <asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="streetTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>City:&nbsp; </strong> </td>
                                <td class="auto-style38">
                                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cityTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Zip Code:&nbsp; </strong> </td>
                                <td class="auto-style38">
                                    <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' TextMode="Number" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="zipTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator">*cannot be empty</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="zipTextBox" CssClass="auto-style47" Display="Dynamic" ErrorMessage="*invalid code" ValidationExpression="(\d{6})"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table class="auto-style39">
                            <tr>
                                <td class="auto-style40">
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="linkbutton" Text="Update" />
                                </td>
                                <td class="auto-style41">
                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="linkbutton" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        cno:
                        <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' />
                        <br />
                        username:
                        <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                        <br />
                        sno:
                        <asp:TextBox ID="snoTextBox" runat="server" Text='<%# Bind("sno") %>' />
                        <br />
                        street:
                        <asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' />
                        <br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                        <br />
                        zip:
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table class="auto-style32">
                            <tr>
                                <td class="auto-style37"><strong>Username:&nbsp; </strong></td>
                                <td class="auto-style38">
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Email:&nbsp; </strong></td>
                                <td class="auto-style38">
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Contact Number:&nbsp; </strong></td>
                                <td class="auto-style38">
                                    <asp:Label ID="cnoLabel" runat="server" Text='<%# Bind("cno") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Shop Number:&nbsp; </strong></td>
                                <td class="auto-style38">
                                    <asp:Label ID="snoLabel" runat="server" Text='<%# Bind("sno") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Street Name:&nbsp; </strong></td>
                                <td class="auto-style38">
                                    <asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>City:&nbsp; </strong></td>
                                <td class="auto-style38">
                                    <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"><strong>Zip Code:&nbsp; </strong></td>
                                <td class="auto-style38">
                                    <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table class="auto-style39">
                            <tr>
                                <td class="auto-style40">
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" CssClass="linkbutton" Text="Edit" />
                                </td>
                                <td class="auto-style41">
                                    <asp:Button ID="View" runat="server" CssClass="button2" Text="View Product" PostBackUrl="~/seller/SellerProducts.aspx" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="Password" runat="server" CssClass="auto-style94" Text="Change Password?" PostBackUrl="~/seller/ChangePassword.aspx" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [SellerDetails] WHERE [email] = @original_email AND [cno] = @original_cno AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([sno] = @original_sno) OR ([sno] IS NULL AND @original_sno IS NULL)) AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL))" InsertCommand="INSERT INTO [SellerDetails] ([email], [cno], [username], [sno], [street], [city], [zip]) VALUES (@email, @cno, @username, @sno, @street, @city, @zip)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [email], [cno], [username], [sno], [street], [city], [zip] FROM [SellerDetails] WHERE ([email] = @email)" UpdateCommand="UPDATE [SellerDetails] SET [cno] = @cno, [username] = @username, [sno] = @sno, [street] = @street, [city] = @city, [zip] = @zip WHERE [email] = @original_email AND [cno] = @original_cno AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([sno] = @original_sno) OR ([sno] IS NULL AND @original_sno IS NULL)) AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_cno" Type="Decimal" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_sno" Type="String" />
                        <asp:Parameter Name="original_street" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_zip" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="cno" Type="Decimal" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="sno" Type="String" />
                        <asp:Parameter Name="street" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="zip" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="login" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cno" Type="Decimal" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="sno" Type="String" />
                        <asp:Parameter Name="street" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="zip" Type="Decimal" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_cno" Type="Decimal" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_sno" Type="String" />
                        <asp:Parameter Name="original_street" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_zip" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
        </tr>
    </table>
</asp:Content>