<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="InstructorProfile.aspx.cs" Inherits="Tuned.instructor.InstructorProfile" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style90 {
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF0000;
        }
        </style>
    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1283px; height: 517px;">
        <tr>
            <td style="text-align: center; width: 427px; "></td>
            <td style="text-align: center; width: 428px; ">
                <h1>Profile</h1>
            </td>
            <td style="text-align: center; width: 428px; "></td>
        </tr>
        <tr>
            <td rowspan="4" style="text-align: center; width: 427px; height: 436px;">&nbsp;</td>
            <td rowspan="4" style="text-align: center; width: 428px; height: 436px;">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnCancelCommand="cancel" OnEditCommand="edit" OnUpdateCommand="update">
                    <EditItemTemplate>
                        <table style="width:405px;">
                            <tr>
                                <td style="width: 202px">First name:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="fname" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px">Last name:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="lname" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px">Email:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:Label ID="email" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px">Mobile number:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:TextBox ID="cno" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cno" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cno" CssClass="auto-style91" Display="Dynamic" ErrorMessage="*invalid number" style="color: #FF0000" ValidationExpression="(\d{10})"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 19px; width: 202px;">Interested in teaching:&nbsp; </td>
                                <td style="height: 19px; width: 203px; text-align: left;">
                                    <asp:TextBox ID="qua" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="qua" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px">House name:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:TextBox ID="hno" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="hno" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px">Street name:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:TextBox ID="sno" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="sno" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px">City:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="city" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px">Post code:&nbsp; </td>
                                <td style="width: 203px; text-align: left;">
                                    <asp:TextBox ID="zip" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="zip" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="zip" CssClass="auto-style47" Display="Dynamic" ErrorMessage="*invalid code" style="color: #FF0000" ValidationExpression="(\d{6})"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: left">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style47" ErrorMessage="RequiredFieldValidator" style="color: #FF0000">*cannot be empty</asp:RequiredFieldValidator>
                                    <strong>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="FileUpload1" CssClass="auto-style90" Display="Dynamic" ErrorMessage="*(.png|.jpg|.gif)" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$"></asp:RegularExpressionValidator>
                                    </strong></td>
                            </tr>
                        </table>
                        <br />
                        <table style="width: 405px;">
                            <tr>
                                <td style="width: 202px">
                                    <asp:Button ID="Update" runat="server" CausesValidation="False" CommandName="Update" CssClass="button2" Text="Update" />
                                </td>
                                <td style="width: 203px">
                                    <asp:Button ID="Cancel" runat="server" CommandName="Cancel" CssClass="button2" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table style="width:404px;">
                            <tr>
                                <td colspan="2" style="height: 140px; text-align: center;">
                                    <asp:Image ID="Image3" runat="server" Height="130px" Width="130px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                                    &nbsp;
                                    <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px; text-align: right">Email:&nbsp; </td>
                                <td style="width: 202px; text-align: left">&nbsp; &nbsp;<asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px; text-align: right">Mobile:&nbsp; </td>
                                <td style="width: 202px; text-align: left">&nbsp; &nbsp;<asp:Label ID="cnoLabel" runat="server" Text='<%# Bind("cno") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px; text-align: right">Teaches:&nbsp; </td>
                                <td style="width: 202px; text-align: left">&nbsp; &nbsp;<asp:Label ID="qualLabel" runat="server" Text='<%# Bind("qual") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px; text-align: right">House name:&nbsp; </td>
                                <td style="width: 202px; text-align: left">&nbsp; &nbsp;<asp:Label ID="hnoLabel" runat="server" Text='<%# Bind("hno") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px; text-align: right">Street name:&nbsp; </td>
                                <td style="width: 202px; text-align: left">&nbsp; &nbsp;<asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px; text-align: right">City:&nbsp; </td>
                                <td style="width: 202px; text-align: left">&nbsp; &nbsp;<asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 202px; text-align: right">Post code:&nbsp; </td>
                                <td style="width: 202px; text-align: left">&nbsp; &nbsp;<asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table style="width: 404px;">
                            <tr>
                                <td style="width: 202px">
                                    <asp:Button ID="Edit" runat="server" CommandName="Edit" CssClass="button2" Text="Edit" />
                                </td>
                                <td style="width: 202px">
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/instructor/ChangePassword.aspx">Change password?</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [email], [cno], [firstname], [lastname], [hno], [street], [city], [qual], [zip], [imagepath] FROM [InstructorDetails] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="login" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="text-align: center; width: 428px; vertical-align: top; height: 109px;">
                
                <table style="width:100%; height: 100%; vertical-align: top">
                    <tr>
                        <td style="width:35%; vertical-align: top">

                        </td>
                        <td style="width:60%; vertical-align: top">
                            &nbsp;</td>
                        <td style="width:5%; vertical-align: top">

                        </td>
                    </tr>
                </table>

            </td>
        </tr>
        <tr>
            <td style="text-align: center; width: 428px; height: 109px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; width: 428px; height: 109px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; width: 428px; height: 110px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; width: 427px; height: 19px;">&nbsp;</td>
            <td style="text-align: center; width: 428px; height: 19px;">&nbsp;</td>
            <td style="text-align: center; width: 428px; height: 19px;">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
