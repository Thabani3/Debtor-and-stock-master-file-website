<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Assesment.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <p>
    &nbsp;</p>
STOCK MASTER FILE<br />

<br />
<table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Stock Code</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Stock Description</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Cost</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Selling Price</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Total Purchases Excl Vat</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Total Sales Excl Vat</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Qty Purchased</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Qty Sold</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">Stock on hand</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 32px" Text="update" Width="62px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 40px" Text="delete" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 43px" Text="search" Width="69px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" Width="466px">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 304px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
