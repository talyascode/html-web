<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registeration_page.aspx.cs" Inherits="registeration_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function checkForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var firstname = document.getElementById("firstname").value;
            var lastname = document.getElementById("lastname").value;
            var email = document.getElementById("email").value;
            var atSign = email.indexOf('@');// קבלת האינדקס של התו @ במחרוזת
            var dotSign = email.indexOf('.', atSign);//  קבלת האינדקס של הנקודה במחרוזת 
            var flag = 0;
            if (username.length < 2) { // אם אורך שם המשתמש קטן מ-2 תווים
                document.getElementById("mUserName").innerHTML = "User Name needs to be longer than 2 letters";
                flag = 1;
            }
            if (password != confirmPassword) { // אם הסיסמאות שונות
                flag = 1;
                document.getElementById("mConfirmPassword").innerHTML = "Passwords are not the same";
            }
            if (password.length < 6 && confirmPassword.length < 6) { // אם אורך הסיסמה קטן מ-6 תווים
                flag = 1;
                document.getElementById("mPassword").innerHTML = "Password length must be more that 6 letters";
            }
            if (firstname.length <= 1) { // אם אורך שם פרטי קטן משתי תווים
                document.getElementById("mFirstName").innerHTML = "First name needs to be more than 1 letter";
                flag = 1;
            }
            if (lastname.length <= 1) { // אם אורך שם המשפחה קטן משתי תווים
                document.getElementById("mLastName").innerHTML = "Last name needs to be more than 1 letter";
                flag = 1;
            }
            if (email.length < 6) { // אם אורך המייל קטן משישה תווים
                flag = 1;
                document.getElementById("mEmail").innerHTML = "Your email is too short";
            }
            else if (atSign == -1) { // אם לא נמצא @ במייל מחזיר לי 1-
                flag = 1;
                document.getElementById("mEmail").innerHTML = "There is no @ in your email address";
            }
            else if (atSign != email.lastIndexOf('@')) { // אם יש שתי @ בכתובת מייל
                flag = 1;
                document.getElementById("mEmail").innerHTML = "You cannot have more than one @";
            }
            else if (atSign < 2 || email.lastIndexOf('@') == email.length - 1) {
                flag = 1;
                document.getElementById("mEmail").innerHTML = "@ can not be first of last in your email";
            }
            else if (email.indexOf('.') == 0 || email.indexOf('.') == email.length - 1) {
                flag = 1;
                document.getElementById("mEmail").innerHTML = ". can not be first or last in your email ";
            }
            else if (dotSign - atSign < -1) {
                flag = 1;
                document.getElementById("mEmail").innerHTML = ". and @ must be at least 2 letters apart ";
            }
            if (flag == 1)
                return false;
            return true;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
                <tr>

                    <th>
                        <p>Registertion</p>
                        <p> fill in this form to create an account!</p>
                            First name:<br>
                            <input type="text" id="firstname" name="firstname" ><br>
                        <p id="mFirstName"> </p>
                            Last name:<br>
                            <input type="text" id="lastname" name="lastname">
                        <p id="mLastName"> </p>
                            <br>
                            User name:<br>
                            <input type="text" id="username" name="username">
                        <p id="mUserName"> </p>
                            <br>
                            password:<br>
                            <input type="password" id="password" name="password"> 
                        <p id="mPassword"> </p>
                            <br />
                            confirm password:<br>
                            <input type="password" id="confirmPassword" name="confirmPassword">
                        <p id="mConfirmPassword"> </p>
                            <br />
                            Living area:<br>
                            <select name="area" id="area">
                                <option value="north">North</option>
                                <option value="center">Center</option>
                                <option value="south">South</option>
                                <option value="aboard">Aboard</option>
                                </select>
                            <br />
                            e-mail:<br>
                            <input type="text" id="email" name="email">
                        <p id="mEmail"> </p>
                        <br />
                            gender:<br />
                            <input type="radio" id="male" name="gender" value="male" checked> Male<br>
                            <input type="radio" id="female" name="gender" value="female" > Female<br />
                            Birthday :<br /><input type="date" name="bday">
                            <br />
                            <button type="submit" name="submit" class="registerbtn" onclick="return checkForm()">submit</button>
                            <button type="reset" class=" resetbtn">clear</button>

                            <div id="ErrorSummary"></div>

                        </>
                    </th>

                </tr>

            </table>
<%=msg %>
</asp:Content>  