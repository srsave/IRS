<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IRSUnsubscribe.aspx.cs" Inherits="IRS.Forms.IRSUnsubscribe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript">
		function confirm_delete()
		{
			return confirm("Are you sure to delete ?");
		}

		function CloseWindow()
		{
			window.close();
        }

        <link href="form.css" rel="stylesheet" />
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="0" cellpadding="0" width="69%" align="center" border="0">
                <tr>
                    <td style="font-weight: bolder; color: #a41c2b; font-family: Arial" align="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="heading111" align="center">Unsubscribe 
						from investor alerts</td>
                </tr>
                <tr>
                    <td>
                        <table style="background-color: #fbfbf1" cellspacing="8" cellpadding="0" width="100%" align="center"
                            border="0">
                            <tr>
                                <td width="30%"></td>
                                <td width="70%"></td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">Email Address *</td>
                                <td><span class="fieldtxt">
                                    <asp:TextBox ID="txtEmailAddress" runat="server"
                                        MaxLength="50" Width="240px" CssClass="input" AutoCompleteType="Disabled"></asp:TextBox></span></td>
                            </tr>
                            <%-- <tr>
                                <td class="fieldtxt">&nbsp;</td>
                                <td class="fieldtxt">
                                    //<IMG src="JpegImage.aspx" align="left">
                                    <asp:Image ID="imgText" runat="server" Visible="false" />
                                </td>
                            </tr>

                            <tr>
                                <td class="fieldtxt">Enter the code shown above:
                                </td>
                                <td class="fieldtxt">
                                    <asp:TextBox ID="CodeNumberTextBox" runat="server" CssClass="input"
                                        AutoCompleteType="Disabled"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td class="fieldtxt">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>--%>
                            <tr>
                                <td class="fieldtxt" align="center" colspan="2">
                                    <asp:Button ID="btnUnSubscribe" runat="server" Text="UnSubscribe" OnClick="btnUnSubscribe_Click"></asp:Button>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset"></asp:Button>&nbsp;
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
