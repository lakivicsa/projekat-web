<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageNewsletter.aspx.cs" Inherits="NBA75.Admin.ManageNewsletter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .tb-width {
            width: 30%;
        }
    </style>

    <h2>Manage newsletter</h2>

    <br />

    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="true"
        CssClass="table"
        AutoGenerateSelectButton="true"
        SelectedRowStyle-BackColor="LightBlue"
        SelectedRowStyle-Font-Bold="true"
        OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        ></asp:GridView>

    <br />

    <asp:Panel ID="Panel1" Visible="false" runat="server" CssClass="form-group">

        <asp:Label ID="Label1" runat="server" Text="NewsletterID:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>

        <br />

        <asp:Label ID="Label2" runat="server" Text="Full name:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

        <br />

        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

        <br />

        <asp:Label ID="Label4" runat="server" Text="Comment:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Height="200px" TextMode="MultiLine"></asp:TextBox>

        <br />

        <asp:Button ID="Button1" runat="server" Text="Apply changes" Font-Bold="true" CssClass="btn btn-success" OnClick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" Text="Delete newsletter member" Font-Bold="true" CssClass="btn btn-danger" OnClick="Button2_Click" />

        <br />

        <asp:Label ID="Label5" runat="server" Font-Bold="true" ForeColor="Red" Text=""></asp:Label>

    </asp:Panel>

</asp:Content>
