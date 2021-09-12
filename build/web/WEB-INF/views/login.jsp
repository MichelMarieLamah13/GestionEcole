<%-- 
    Document   : article
    Created on : 14 févr. 2021, 09:23:22
    Author     : khalf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!doctype html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://preview.colorlib.com/theme/bootstrap/login-form-07/fonts/icomoon/style.css">
        <link rel="stylesheet" href="https://preview.colorlib.com/theme/bootstrap/login-form-07/css/owl.carousel.min.css">

        <link rel="stylesheet" href="https://preview.colorlib.com/theme/bootstrap/login-form-07/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://preview.colorlib.com/theme/bootstrap/login-form-08/css/style.css">
        <title>Gestion Ecole</title>
    </head>
    <body>
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="https://preview.colorlib.com/theme/bootstrap/login-form-07/images/undraw_remotely_2j6y.svg" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-md-6 contents">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="mb-4">
                                    <h3>Sign In</h3>
                                    <p class="mb-4">Welcome Back</p>
                                </div>
                                <form action="login" method="post">
                                    <div class="form-group first">
                                        <label for="username">Username</label>
                                        <input type="text" class="form-control" id="username" name="login" required="true" >
                                    </div>
                                    <div class="form-group last mb-4">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" id="password" name="password" required="true">
                                    </div>
                                   
                                    <input type="submit" value="Log In" class="btn text-white btn-block btn-primary">
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://preview.colorlib.com/theme/bootstrap/login-form-08/js/jquery-3.3.1.min.js"></script>
<script src="https://preview.colorlib.com/theme/bootstrap/login-form-08/js/popper.min.js"></script>
<script src="https://preview.colorlib.com/theme/bootstrap/login-form-08/js/bootstrap.min.js"></script>
<script src="https://preview.colorlib.com/theme/bootstrap/login-form-08/js/main.js"></script>
    </body>
</html>
