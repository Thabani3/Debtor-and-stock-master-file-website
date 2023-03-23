<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Assesment.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <p>
    &nbsp;</p>
STOCK MASTER FILE<br />

<br />
<table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">Document No</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="159px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">Stock code</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="StockCode" DataValueField="StockCode" Width="158px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-UQL21QTI;Initial Catalog=Assesment_db;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [StockCode] FROM [StockMasterFile]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">Date</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="158px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">Transaction type</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="153px">
                <asp:ListItem>Cash</asp:ListItem>
                <asp:ListItem>Card</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">Qty</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="157px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">Unit cost</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="157px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">unit sell</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="157px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 44px" Text="update" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 48px" Text="delete" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 53px" Text="search" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 358px">&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" Width="469px">
            </asp:GridView>
        </td>
    </tr>
</table>

</asp:Content>
