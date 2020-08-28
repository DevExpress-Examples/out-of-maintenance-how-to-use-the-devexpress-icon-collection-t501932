<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Import Namespace="DevExpress.Web.ASPxThemes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .myButton {
            border-width: 0px;
            width: 32px;
            height: 32px;
        }
        .button {
            display: inline;
        }
        .button div.dxb {
            padding: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <dx:ASPxButton ID="ASPxButton1" CssClass="button" runat="server">
                        <Image IconID="navigation_home_32x32">
                        </Image>
                    </dx:ASPxButton>
                    <span>This ASPxButton is declared in ASPx.</span>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:Button ID="Button1" runat="server" CssClass="dxIcon_navigation_home_32x32 myButton" />
                        <span>This is a standard ASP button. The CssClass property is assigned directly.</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:Button ID="Button2" runat="server" CssClass="myButton" OnInit="Button2_Init" />
                        <span>This is a standard ASP button. The CssClass property is assigned OnInit.</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:PlaceHolder runat="server" ID="ph"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <input type="button" class="dxIcon_<%=IconID.NavigationHome32x32%> myButton" />
                        <span>This is a standard input.</span>
                    </div>
                </td>
            </tr>

        </table>
    </form>
</body>
</html>