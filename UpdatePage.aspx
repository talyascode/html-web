<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdatePage.aspx.cs" Inherits="UpdatePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 > please select from the following to be updated:</h2>
    <select name="field">
        <option value="email">E-mail</option>
        <option value="latname">Last Name</option>
        <option value="bday">Birthday</option>
        <option value="area">Area</option>
        </select>
    <input type="text" name="newinfo" />
    <input type="submit" name="submit10" value="Submit" />
    <%=updateP %>
</asp:Content>

