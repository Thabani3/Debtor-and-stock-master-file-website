<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assesment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    &nbsp;</p>
DEBTOR MASTER<br />
<table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">Account Code</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">Address1</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">Address2</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">Address3</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">Balance</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">SalesYearDate</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">CostYearDate</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="52px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 32px" Text="update" Width="56px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 43px" Text="delete" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 46px" Text="search" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 190px">&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" Width="707px">
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>
