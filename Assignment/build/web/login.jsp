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
                <div class="title login">Đăng nhập</div>
                <div class="title signup">Đăng kí</div>
            </div>
            <div class="form-container">
                <div class="slide-controls">
                    <input type="radio" name="slide" id="login" checked>
                    <input type="radio" name="slide" id="signup">
                    <label for="login" class="slide login">Đăng nhập</label>
                    <label for="signup" class="slide signup">Đăng kí</label>
                    <div class="slider-tab"></div>
                </div>
                <div class="form-inner">
                    <form action="login" class="login" method="POST">
                        <div class="field">
                            <input type="text" name="user" placeholder="Tên đăng nhập" required>
                        </div>
                        <div class="field">
                            <input type="password" name="pass" placeholder="Mật khẩu" required>
                        </div>
                        <p style="color: red">${mess}</p>
                        
                        
                        <div class="field btn">
                            <div class="btn-layer"></div>
                            <input type="submit" value="Đăng nhập">
                        </div>
                        <div class="signup-link">Chưa có tài khoản? <a href="">Đăng kí ngay</a></div>
                    </form>
                    <form action="signup" class="signup" method="POST">
                        <div class="field">
                            <input type="text" name="user" placeholder="Tên đăng nhập" required>
                        </div>
                        <div class="field">
                            <input type="password" name="pass" placeholder="Mật khẩu" required>
                        </div>
                        <div class="field">
                            <input type="password" name="repass" placeholder="Nhập lại mật khẩu" required>
                        </div>
                        <div class="field btn">
                            <div class="btn-layer"></div>
                            <input type="submit" value="Đăng kí">
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
