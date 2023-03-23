<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Assesment.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    DEBTOR TRANSACTION FILE</p>
<table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">DocumentNo</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">AccountCode</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="AccountCode" DataValueField="AccountCode" Height="16px" Width="124px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-UQL21QTI;Initial Catalog=Assesment_db;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [AccountCode] FROM [debtors1_Tab]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">Date</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">GrossTransactionValue</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">TransactionType</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="124px">
                <asp:ListItem>Card</asp:ListItem>
                <asp:ListItem>Cash</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">VatValue</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 42px" Text="update" Width="56px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 47px" Text="delete" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 49px" Text="search" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" Width="634px">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="modal-sm" style="width: 252px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
