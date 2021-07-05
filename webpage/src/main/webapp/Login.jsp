<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="assets/css/login.css">
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">로그인</button>
                    <button type="button" class="togglebtn" onclick="register()">회원가입</button>
                </div>     
                <form id="login" action="LoginCon" class="input-group" method="ppst">
                    <input type="text" class="input-field" name = "Login_email" placeholder="Enter Email" required>
                    <input type="password" class="input-field" name = "Login_pw" placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit">Login</button>
                </form>
                <form id="register" action="JoinCon" class="input-group" method="post">
                    <input type="text" name="email" class="input-field" placeholder="Enter Email" required>
                    <input type="password" name="pw" class="input-field" placeholder="Enter pw" required>
                    <input type="text" name="name" class="input-field" placeholder="Enter name" required>
                    <input type="text" name="tel" class="input-field" placeholder="Enter Phone-number" required>
                    <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
                    <button class="submit">REGISTER</button>
                </form>
            </div>
        </div>
        
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
    </body>
</html> 
