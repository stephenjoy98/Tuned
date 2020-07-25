<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Tuned.user.UP" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style14 {
            width: 1259px;
            height: 363px;
        }
        .auto-style15 {
            height: 68px;
        }
        .auto-style16 {
            height: 69px;
        }
        .auto-style17 {
            height: 72px;
        }
        .auto-style19 {
            height: 72px;
            width: 247px;
        }
        .auto-style20 {
            height: 72px;
            width: 248px;
        }
        .auto-style21 {
            height: 73px;
            width: 247px;
        }
        .auto-style22 {
            height: 73px;
            width: 248px;
        }
        .auto-style27 {
            width: 394px;
            height: 161px;
        }
        .auto-style32 {
            height: 23px;
            width: 142px;
            text-align: right;
        }
        .auto-style33 {
            height: 23px;
            width: 142px;
            text-align: left;
        }
        .auto-style34 {
            height: 25px;
            width: 142px;
            text-align: right;
        }
        .auto-style35 {
            height: 25px;
            width: 142px;
            text-align: left;
        }
        .auto-style36 {
            height: 26px;
            width: 142px;
            text-align: right;
        }
        .auto-style37 {
            height: 26px;
            width: 142px;
            text-align: left;
        }
        .auto-style38 {
            width: 392px;
            height: 33px;
        }
        .auto-style39 {
            width: 142px;
        }
        .auto-style40 {
            background-color: #FFFFFF;
        }
        .auto-style42 {
            width: 419px;
            text-align: center;
        }
        .auto-style46 {
            height: 73px;
            width: 419px;
            text-align: center;
        }
        .auto-style92 {
            width: 394px;
        }
        .auto-style93 {
            width: 196px;
        }
        </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style42" rowspan="3">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style42" rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style40" DataKeyNames="email" Width="249px">
                    <EditItemTemplate>
                        <table class="auto-style27">
                            <tr>
                                <td class="auto-style34"><strong>Username:&nbsp; </strong></td>
                                <td class="auto-style35">
                                    <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="usernameTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>Email:&nbsp; </strong></td>
                                <td class="auto-style37">
                                    <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>Contact Number:&nbsp; </strong></td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' TextMode="Number" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cnoTextBox" CssClass="auto-style91"  ErrorMessage="*invalid number" Display="Dynamic" ValidationExpression="(\d{10})" style="color: #FF0000"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>House Number:&nbsp; </strong></td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="hnoTextBox" runat="server" Text='<%# Bind("hno") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="hnoTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>Street Name:&nbsp; </strong></td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="streetTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>City:&nbsp; </strong></td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cityTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"><strong>Zip Code:&nbsp; </strong></td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' TextMode="Number" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="zipTextBox" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="zipTextBox" CssClass="auto-style47" ErrorMessage="*invalid code" Display="Dynamic" ValidationExpression="(\d{6})" style="color: #FF0000"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table class="auto-style38">
                            <tr>
                                <td class="auto-style39">
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="linkbutton" Text="Update" />
                                </td>
                                <td class="auto-style39">
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
                        hno:
                        <asp:TextBox ID="hnoTextBox" runat="server" Text='<%# Bind("hno") %>' />
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
                        <table class="auto-style27">
                            <tr>
                                <td class="auto-style32"><strong>Username:&nbsp; </strong></td>
                                <td class="auto-style33">
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32"><strong>Email:&nbsp; </strong></td>
                                <td class="auto-style33">
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32"><strong>Contact Number:&nbsp; </strong></td>
                                <td class="auto-style33">
                                    <asp:Label ID="cnoLabel" runat="server" Text='<%# Bind("cno") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32"><strong>House Number:&nbsp; </strong></td>
                                <td class="auto-style33">
                                    <asp:Label ID="hnoLabel" runat="server" Text='<%# Bind("hno") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32"><strong>Street Name:&nbsp; </strong></td>
                                <td class="auto-style33">
                                    <asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32"><strong>City:&nbsp; </strong></td>
                                <td class="auto-style33">
                                    <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32"><strong>Zip Code:&nbsp; </strong></td>
                                <td class="auto-style33">
                                    <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table align="center" class="auto-style92">
                            <tr>
                                <td class="auto-style93">
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" CssClass="linkbutton" Text="Edit" />
                                </td>
                                <td class="auto-style93">
                                    <asp:Button ID="Order" runat="server" CssClass="button2" PostBackUrl="~/user/ViewOrders.aspx" Text="Order History" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="Password" runat="server" CssClass="auto-style94" PostBackUrl="~/user/ChangePassword.aspx" Text="Change Password?" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [UserDetails] WHERE [email] = @original_email AND [cno] = @original_cno AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([hno] = @original_hno) OR ([hno] IS NULL AND @original_hno IS NULL)) AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL))" InsertCommand="INSERT INTO [UserDetails] ([email], [cno], [username], [hno], [street], [city], [zip]) VALUES (@email, @cno, @username, @hno, @street, @city, @zip)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [email], [cno], [username], [hno], [street], [city], [zip] FROM [UserDetails] WHERE ([email] = @email)" UpdateCommand="UPDATE [UserDetails] SET [cno] = @cno, [username] = @username, [hno] = @hno, [street] = @street, [city] = @city, [zip] = @zip WHERE [email] = @original_email AND [cno] = @original_cno AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([hno] = @original_hno) OR ([hno] IS NULL AND @original_hno IS NULL)) AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_cno" Type="Decimal" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_hno" Type="String" />
                        <asp:Parameter Name="original_street" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_zip" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="cno" Type="Decimal" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="hno" Type="String" />
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
                        <asp:Parameter Name="hno" Type="String" />
                        <asp:Parameter Name="street" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="zip" Type="Decimal" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_cno" Type="Decimal" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_hno" Type="String" />
                        <asp:Parameter Name="original_street" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_zip" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style42">&nbsp;</td>
        </tr>
        </table>
</asp:Content>