<%-- 
    Document   : SignUp
    Created on : May 29, 2022, 6:11:13 PM
    Author     : Cuong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <style>
            body {
                background: linear-gradient(to right, rgb(112, 225, 245), rgb(255, 209, 148));
                display: flex;
                justify-content: center;
                align-items: center
            }
            .container_signup {
                width: 400px;
                height: 500px;
                background: white;
                border-radius: 10px
            }
            .form-signup {
                padding: 35px;
            }
            .input-area {
                margin-top: 40px;
            }
            #user-name,
            #user-pass {
                margin-bottom: 15px
            }
            
            #user-repeatpass {
                margin-bottom: 20px
            }
            .btn-primary {
                transition: 0.5s;
            }
            .btn-primary:hover {
                opacity: 0.6;
            }
            #cancel_signup {
                display: block;
                margin-top: 135px;
            }
        </style>
    </head>
    <body>
            <div class='container_signup'>
                <form action="signup" method="post" class="form-signup">
                    <h1 class="h3 mb-3 font-weight-normal" style="text-align: center;font-size: 40px;"> <b>Sign up</b></h1>
                    <div class="input-area">
                        <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">
                        <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                        <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
                    </div>
                    <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up Now</button>
                    <a href="Login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> <i style="font-size: 18px">Back</i></a>
                </form>
            </div>
    </body>
</html>
