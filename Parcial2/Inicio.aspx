<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Parcial2.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .nuevoEstilo1 {
            font-size: medium;
            text-align: center;
        }
    .nuevoEstilo2 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        font-weight: bold;
        text-align: center;
    }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="left">BIENVENIDO AL SEGUNDO PARCIAL</h1>
    <h3 align="left">MENU</h3>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registros.aspx" CssClass="auto-style1">REGISTRO</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style2" NavigateUrl="~/SubirDescargar.aspx">SUBIR/DESCARGAR UN ARCHIVO</asp:HyperLink>
</asp:Content>
