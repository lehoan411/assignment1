<%-- 
    Document   : login
    Created on : Oct 10, 2023, 1:40:05 PM
    Author     : MSTTPC2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop Anh Ba</title>
        <link href="css/stylelogin.css" rel="stylesheet">
    </head>

    <body>

        <div class="wrapper">
            <div class="title-text">
                <div class="title login">Đổi mật khẩu</div>
            </div>
            <div class="form-container">
                
                <div class="form-inner">      
                    <form action="change" method="post" class="signup" >
                        <div class="field">
                            <input type="password" name="opass" placeholder="Nhập mật khẩu cũ" required> 
                            <input type="hidden" name="user" value="${sessionScope.acc.username}">
                        </div> 
                        <p style="color: red">${mess}</p>
                        <div class="field">
                            <input type="password" name="pass" placeholder="Mật khẩu mới" required>
                        </div>
                        <div class="field">
                            <input type="password" name="repass" placeholder="Nhập lại mật khẩu" required>
                        </div>
                        <div class="field btn">
                            <div class="btn-layer"></div>
                            <input type="submit" value="Đổi mật khẩu">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <script>
            const loginText = document.querySelector(".title-text .login");
            const loginForm = document.querySelector("form.login");
            const loginBtn = document.querySelector("label.login");
            const signupBtn = document.querySelector("label.signup");
            const signupLink = document.querySelector("form .signup-link a");
            signupBtn.onclick = (() => {
                loginForm.style.marginLeft = "-50%";
                loginText.style.marginLeft = "-50%";
            });
            loginBtn.onclick = (() => {
                loginForm.style.marginLeft = "0%";
                loginText.style.marginLeft = "0%";
            });
            signupLink.onclick = (() => {
                signupBtn.click();
                return false;
            });
        </script>
    </body>
</html>
