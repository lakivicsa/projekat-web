<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateYourTeam.aspx.cs" Inherits="NBA75.CreateYourTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .spacing {
            padding: 24px 0px;
        }

        .btn-spacing {
            margin: 8px 0;
        }

        .top-margin {
            margin-top: 64px;
        }
    </style>

    <h2 class="top-margin">Create your dream NBA team - game</h2>

    <asp:Panel ID="Panel1" runat="server">

        <asp:Label ID="Label1" runat="server" Text="Give your dream team a name:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" 
            Text="Create your team now!" 
            CssClass="btn btn-success btn-spacing" 
            Font-Bold="true"
            OnClick="Button1_Click"/>

        <br />

        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>

    </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server" Visible="false">

        <hr />
        <h3>Insert players in your team</h3>

        <asp:Label ID="TeamLabel" runat="server" Text="Team name:"></asp:Label>
        <asp:TextBox ID="TeamTextBox" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="First name:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

        <br />

        <asp:Label ID="Label3" runat="server" Text="Last name:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

        <br />

        <asp:Button ID="Button2" runat="server" Text="Insert player" 
            Font-Bold="true" 
            CssClass="btn btn-primary"
            OnClick="Button2_Click"/>

        <asp:Button ID="Button3" runat="server" 
            Text="Finish inserting players"
            CssClass="btn btn-warning m-l-3"
            Font-Bold="true"
            OnClick="Button3_Click"
            Visible="false"/>

        <br />
        <br />

        <asp:Label ID="PlayersErrorLabel" runat="server" Font-Bold="true" ForeColor="Red" Text=""></asp:Label>

        <br />

        <asp:Label ID="InsertErrorLabel" runat="server" 
            Text=""
            Font-Bold="true"
            ForeColor="Red"></asp:Label>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            Font-Bold="true"
            ForeColor="Red"
            Visible="false"/>

    </asp:Panel>

    <asp:Panel ID="Panel4" Visible="false" runat="server">

        <h3>Your players list</h3>

         <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="false"
                CssClass="table table-dark"
                EmptyDataText="You have not entered any players yet.">

                <Columns>
                    <asp:BoundField DataField="firstName" HeaderText="First Name" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" />
                </Columns>

          </asp:GridView>

        <br />

        <asp:Label ID="PreCoachLabel" runat="server" 
            Text="Your coach:"
            CssClass="coach-label"></asp:Label>

        <br />

        <asp:Label ID="CoachLabel" runat="server" 
            Text=""
            CssClass="coach-label"></asp:Label>

    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" Visible="false">

        <br />

        <asp:Label ID="Label4" runat="server" Text="Select coach:"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Steve Nash</asp:ListItem>
            <asp:ListItem>Darvin Ham</asp:ListItem>
            <asp:ListItem>Doc Rivers</asp:ListItem>
            <asp:ListItem>Terry Stots</asp:ListItem>
            <asp:ListItem>Eric Spoelstra</asp:ListItem>
            <asp:ListItem>Jason Kidd</asp:ListItem>
            <asp:ListItem>Mike Budenholzer</asp:ListItem>
            <asp:ListItem>Taylor Jenkins</asp:ListItem>
            <asp:ListItem>Stephen Silas</asp:ListItem>
            <asp:ListItem>Monty Williams</asp:ListItem>
            <asp:ListItem>Tyronn Lue</asp:ListItem>
        </asp:DropDownList>

        <br />

        <asp:Button ID="Button4" runat="server" 
            Text="Select coach" 
            CssClass="btn btn-primary" 
            Font-Bold="true"
            OnClick="Button4_Click"/>

        <br />

        <asp:Label ID="CoachErrorLabel" runat="server" 
            Font-Bold="true" 
            ForeColor="Red" 
            Text=""></asp:Label>

    </asp:Panel>
    

    <!-- VALIDATORI -->

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="First name is required!"
        ControlToValidate="TextBox2"
        EnableClientScript="false"
        Display="None"
        ></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Last name is required"
        EnableClientScript="false"
        Display="None"
        ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="First name can not contain numbers!"
        EnableClientScript="false"
        Display="None"
        ValidationExpression="[a-zA-Z]+"
        ControlToValidate="TextBox2"></asp:RegularExpressionValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ErrorMessage="Last name can not contain numbers!"
        EnableClientScript="false"
        Display="None"
        ValidationExpression="[a-zA-Z]+"
        ControlToValidate="TextBox3"></asp:RegularExpressionValidator>

</asp:Content>
