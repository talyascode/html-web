<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Questanair2.aspx.cs" Inherits="Questanair2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <script>
        function GetResults() {

            if (document.getElementById("1").checked == true) {
                window.alert("I recommend for you to watch the movie 'the avengers:endgame' ");

            }
            else if (document.getElementById("2").checked == true) {
                window.alert("I recommend for you to watch the movie 'murder mystery' ");
            }

            else if (document.getElementById("3").checked == true) {
                window.alert("I recommend for you to watch the movie 'to all the boys i've loved bfore'");
            }
            if (document.getElementById("4").checked == true) {
                window.alert("I recommend for you to watch the movie 'star wars' ");
            }

            else if (document.getElementById("5").checked == true) {
                window.alert("I recommend for you to watch the movie 'truth or dare' ");
            }  
        }
       </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table>
            <tr>
                <td>What is your favorite genre in movies?</td>
            </tr>
            <tr>
                <td><input type ="radio" id="1" value="Action"/>Action</td>
            </tr>
            <tr>
                <td><input type ="radio" id="2" value="Comedy"/>Comedy</td>
            </tr>
            <tr>
                <td><input type ="radio" id="3" value="Romance"/>Romance</td>
            </tr>
            <tr>
                <td><input type ="radio" id="4" value="Fantasy"/>Fantasy</td>
            </tr>
        <tr>
                <td><input type ="radio" id="5" value="Horror"/>Horror</td>
            </tr>
<tr><td><input type="submit" value="Check my score" onclick="GetResults()" /></td></tr>
        </table>
            



</asp:Content>


