<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cookies.aspx.cs" Inherits="cookies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> enter adress: </h1>
    <input type="text" name="adress2" />
    <h1> enter name: </h1>
    <input type="text" name="name2" />
    <input type="submit" name="submitt" value="submit" />
    <%=myAdress %>
</asp:Content>

