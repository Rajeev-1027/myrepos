<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="ImportFromExcel.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 281px;
        }
        .auto-style3 {
            width: 524px;
        }
        .auto-style4 {
            width: 315px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 524px;
            text-align: center;
        }
        .auto-style7 {
            width: 315px;
            text-align: center;
            height: 57px;
        }
        .auto-style8 {
            width: 524px;
            height: 57px;
        }
    </style>
</head>
<body style="height: 341px">
    <form id="form1" runat="server">
        <div class="auto-style5">
        <asp:Label ID="Label1" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Larger" ForeColor="#CCFFFF" Text="Fill the Detail"></asp:Label>
        </div>

        <table class="auto-style1" border="1">
        <tr>
            <td class="auto-style4"><asp:Label runat="server" Text="Name" Font-Size="Large"></asp:Label></td>
            <td class="auto-style3"><asp:TextBox runat="server" Height="25px" Width="188px" ID="txtbx_Name"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td class="auto-style4"><asp:Label runat="server" Text="Age" Font-Size="Large"></asp:Label></td>
            <td class="auto-style3"><asp:TextBox runat="server" Height="25px" Width="185px" ID="txtbx_Age"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td class="auto-style7"><asp:Label runat="server" Text="Gender" Font-Size="Large"></asp:Label></td>
            <td class="auto-style8"><asp:TextBox runat="server" Height="25px" Width="182px" ID="txtbx_Gender"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td class="auto-style4"><asp:Label runat="server" Text="Email" Font-Size="Large"></asp:Label></td>
            <td class="auto-style3"><asp:TextBox runat="server" Height="25px" Width="180px" ID="txtbx_Email"></asp:TextBox></td>
            
        </tr>
        
        <tr>
            <td class="auto-style4">
                <asp:Button ID="btn_grid" runat="server" OnClick="btn_grid_Click" Text="Go to Grid" />
            </td>
            <td class="auto-style6"><asp:Button runat="server" Text="Save" ID="btn_Save" BackColor="#99CCFF" Font-Bold="True"  Width="100px" OnClick="btn_Save_Click"></asp:Button></td>
            
        </tr>
    </table>
        <asp:Label runat="server" Text="" ID="lbl_status"></asp:Label>
    </form>
    
</body>
</html>
