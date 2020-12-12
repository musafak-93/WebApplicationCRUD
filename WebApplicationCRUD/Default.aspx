<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationCRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: #001184">
        <br />
        <div style="background-color: #00CCFF; font-size: xx-large">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="User Registrasi Form" BackColor="#00CCFF" Font-Size="XX-Large" ForeColor="White"></asp:Label></div>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="User ID" Font-Bold="True" ForeColor="Aqua"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtuid" runat="server" Width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Height="23px" BackColor="Aqua" BorderColor="Aqua" ForeColor="Blue" />
        <br />
        <br />

        <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" ForeColor="Aqua"></asp:Label> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Email" Font-Bold="True" ForeColor="Aqua"></asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" BackColor="Aqua" BorderColor="Aqua" ForeColor="Blue" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" BackColor="Aqua" BorderColor="Aqua" ForeColor="Blue" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" 
            OnClientClick="return confirm('Are you sure to delete?');" Text="Delete" BackColor="Aqua" BorderColor="Aqua" ForeColor="Blue" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#009933" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="500px" ForeColor="Aqua">
        </asp:GridView>
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

    </div>

</asp:Content>
