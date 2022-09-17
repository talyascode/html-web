<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script>
function CheckForm2() {
   var password = document.getElementById("upassword").value;
   var confirmPassword = document.getElementById("upassword2").value;
   var flag = 0;
   if (password != confirmPassword) 
   {
        flag = 1;
        document.getElementById("mymsg").innerHTML = "Passwords are not the same";
    }
    if (password.length < 6 && confirmPassword.length < 6) 
    {
        flag = 1;
        document.getElementById("mymsg").innerHTML = "Password length must be more that 6 letters";
    }
    if (flag == 1)
        return false;
    return true;
 }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%=updatePasswordmsg %>
<table>
     <tr>
        <td>Password : </td>
        <td><input type="password" name="upassword" id="upassword" /></td>
                
     </tr>
     <tr>
     <td>Confirm Password:</td>
     <td><input type="password" name="upassword2" id="upassword2"/></td>
            </tr>
            
            <tr><td ><input type="submit" name="submit3" value="Submit" onclick="return CheckForm2()" /></td></tr>
</table>
    <p id="mymsg"></p>
</asp:Content>
