<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvestorRegistration.aspx.cs" Inherits="IRS.Forms.InvestorRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="0" cellpadding="0" width="69%" align="center" border="0">
                <tr>
                    <td class="header_repeat" style="padding-left: 10px" valign="middle">
                       <%-- <a href="http://www.icicibank.com">
                            <img height="48" src="../Resources/Images/icici_logo.jpg" width="232" border="0"></a>--%>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; color: #a41c2b; font-family: Arial" align="center">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" class="heading111">Subscribe to investor alerts
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <font face="Arial" size="2"><i>* indicates compulsory fields</i></font>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="background-color: #fbfbf1" cellspacing="8" cellpadding="0" width="100%"
                            align="center" border="0">
                            <tr>
                                <td class="heading1" colspan="2">Personal Details
                                </td>
                            </tr>
                            <tr>
                                <td width="30%">&nbsp;
                                </td>
                                <td width="70%">
                                    <asp:Label ID="Label1" runat="server" ForeColor="#A41C2B" Font-Size="X-Small"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Email Address *
                                </td>
                                <td class="fieldtxt">

                                    <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="input" Width="240px" MaxLength="50"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">First Name *
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtfirstName" runat="server" CssClass="input" Width="240px" MaxLength="50"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Last Name *
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="input" Width="240px" MaxLength="50"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Company Name *
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="input" Width="240px" MaxLength="100"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Type
                                </td>
                                <td class="fieldtxt">
                                    <asp:DropDownList ID="ddlInvestorType" runat="server" CssClass="input">
                                        <asp:ListItem Text="Internal" Value="Internal"></asp:ListItem>
                                        <asp:ListItem>Extarnal</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="heading1" colspan="2">Mailing Details
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Street Address *
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtStreetAddress1" runat="server" CssClass="input" Width="240px"
                                        MaxLength="50" AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtStreetAddress2" runat="server" CssClass="input" Width="240px"
                                        MaxLength="50" AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtStreetAddress3" runat="server" CssClass="input" Width="240px"
                                        MaxLength="50" AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">City / Town *
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="input" Width="240px" MaxLength="50"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Zip / Postal Code
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtPin" runat="server" CssClass="input" Width="240px" MaxLength="10"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Country *
                                </td>
                                <td class="fieldtxt">
                                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="input">
                                        <asp:ListItem Text="India">

                                        </asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="heading1">Contact Details
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Telephone
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtTelephone" runat="server" CssClass="input" Width="240px" MaxLength="25"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Fax
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="txtFax" runat="server" CssClass="input" Width="240px" MaxLength="25"
                                        AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td class="fieldtxt">&nbsp;
                                </td>
                            </tr>
                            <%--<tr>
                                <td class="fieldtxt">&nbsp;
                                </td>--%>
                                <%--<td class="fieldtxt">
                           <asp:Image ID="imgText" runat="server" Visible="false" />
                        </td>--%>
                               <%-- <td class="fieldtxt">
                                    <img src="JpegImage.aspx" align="left">
                                </td>
                            </tr>--%>
                           <%-- <tr>
                                <td class="fieldtxt">Enter the code shown above:
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="CodeNumberTextBox" runat="server" CssClass="input" AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>--%>
                            <tr>
                                <td class="fieldtxt">&nbsp;
                                </td>
                                <td class="fieldtxt">
                                    <asp:Label ID="MessageLabel" runat="server" ForeColor="#A41C2B" Font-Size="X-Small"></asp:Label>
                                    <asp:TextBox ID="txtinvisible" runat="server" CssClass="input" Visible="False" AutoCompleteType="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt" align="center" colspan="2">
                                    <asp:Button ID="btnSubscribe" runat="server" Visible="False" Text="Subscribe" OnClick="btnSubscribe_Click"></asp:Button>
                                    <asp:Button ID="SubmitButton" runat="server" Text="Subscribe"></asp:Button>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset"></asp:Button>
                                    <asp:Button ID="btnClose" runat="server" Text="Close"></asp:Button>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
