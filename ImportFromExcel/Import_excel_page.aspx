<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Import_excel_page.aspx.cs" Inherits="ImportFromExcel.Import_excel_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP SAMPLE</title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 50px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 118px;
            text-align: center;
        }
        .auto-style4 {
            color: #FF33CC;
            background-color: #CCFFFF;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 337px;
        }
        .auto-style7 {
            width: 379px;
            height: 372px;
        }
    </style>
</head>
<body style="height: 105px; width: 343px">
    <form id="form1" runat="server" class="auto-style7">
        <div class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="Please Select your File" BackColor="Blue" CssClass="auto-style4" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF6600"></asp:Label>

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="Select File"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style4" />
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Upload" Width="102px" />
        <p class="auto-style6">
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="375px" Height="16px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" BackColor="#66FF99" Font-Bold="True" ForeColor="#003399" Text="Export-Excel" Width="92px" OnClick="Button2_Click" />
    </form>
</body>
</html>
