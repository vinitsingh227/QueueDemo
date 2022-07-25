<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QueueDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="border: 1px solid black; text-align:center; font-family:Arial">
            <tr>
                <td>Counter 1</td>
                <td></td>
                <td>Counter 2</td>
                <td></td>
                <td>Counter 3</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="txtCounter1" runat="server" BackColor="#3333FF" ForeColor="#CCCCFF" Width="150px"></asp:TextBox></td>
                <td></td>
                <td><asp:TextBox ID="txtCounter2" runat="server" BackColor="#3333FF" ForeColor="#9999FF" Width="150px"></asp:TextBox></td>
                <td></td>
                <td><asp:TextBox ID="txtCounter3" runat="server" BackColor="#3333FF" ForeColor="#CCCCFF" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button runat="server" ID="btnCounter1" Text="Next" Width="150px" OnClick="btnCounter1_Click"></asp:Button></td>
                <td></td>
                <td><asp:Button runat="server" ID="btnCounter2" Text="Next" Width="150px" OnClick="btnCounter2_Click"></asp:Button></td>
                <td></td>
                <td><asp:Button runat="server" ID="btnCounter3" Text="Next" Width="150px" OnClick="btnCounter3_Click"></asp:Button></td>
            </tr>
           
            <tr>
                <td colspan="5">
                <asp:TextBox ID="txtDisplay" runat="server" BackColor="#3333FF" ForeColor="#CCCCFF" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:ListBox ID="listTokens" Font-Size="Large" runat="server"></asp:ListBox>
                </td>
            </tr>

             <tr>
                <td colspan="5">
                    <asp:Button runat="server" ID="btnPrintTokens" Text="Print Tokens" Width="150px" OnClick="btnPrintTokens_Click"></asp:Button>
                </td>
            </tr>

             <tr>
                <td colspan="5">
                    <asp:Label ID="lblStatus" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
