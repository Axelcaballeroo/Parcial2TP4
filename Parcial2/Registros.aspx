<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="Parcial2.Registros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Menú de Registro</h2>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Complete este campo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="241px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Complete este campo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="El valor no es un email" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Edad"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="55px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Complete este campo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Debe ser mayor de 15 años" ForeColor="#CC0000" MaximumValue="99" MinimumValue="15" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Width="164px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Complete este campo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Repetir Password"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="171px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Complete este campo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Las password no coinciden" ForeColor="#CC0000"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="REGISTRAR" OnClick="Button1_Click" />



    <br />
    <br />
    <br />
    Cookie:&nbsp;



    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

    <br />
    <br />

    Session:&nbsp;



    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>

</asp:Content>
