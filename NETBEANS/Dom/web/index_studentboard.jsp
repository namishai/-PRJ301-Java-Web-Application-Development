<%-- 
    Document   : index_studentboard
    Created on : Oct 31, 2022, 11:38:13 PM
    Author     : haiqd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>FPT Dormity On Campus</title>
        <link rel="shortcut icon" type="x-icon" href="img/icon.png">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style_studentboard.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@500&display=swap" rel="stylesheet">F
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
                integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </head>

    <body>
        <header>
            <div class="logo">
                <img src="img/logo.png" alt="">
            </div>
            <div class="menu_icon">
                <div class="icon">
                    <img src="img/Profile/${sessionScope.Student.getImg()}" alt="">
                </div>
                <nav class="menu">
                    <div class="logo">
                        <img src="img/logo.png" alt="">
                    </div>
                    <div class="icon_close"><img src="img/Profile/${sessionScope.Student.getImg()}" alt=""></div>
                    <div class="banner">
                        <h1 class="banner__title">Hello ${sessionScope.Student.getName()}</h1>
                    </div>
                    <ul>
                        <li><a class="nav-link active-link" href="#">Home</a></li>
                        <li><a class="nav-link " href="#">Profile</a></li>
                        <li><a class="nav-link " href="#">Wallet</a></li>
                        <li><a class="nav-link " href="logout">Log Out</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="text">
            <div class="header">
                <h1>Student Board</h1>
            </div>
        </div>
        <div class="container">
            <div id="menu">
                <div id="menu-items">
                    <div class="menu-item"><a href="history">Resident History</a></div>
                    <div class="menu-item"><a href="booking">Book a bed</a></div>
                    <div class="menu-item"><a href="">View Monthly Electric / Water Usage</a></div>
                    <div class="menu-item"><a href="">Request</a></div>
                    <div class="menu-item"><a href="">Cost</a></div>
                </div>
                <div id="menu-background-pattern"></div>
                <div id="menu-background-image" style="background-image: url(img/back.jpg);
                     "></div>
            </div>
        </div>
        <div class="footer">
            © Copyright 2022 - FPT Education | Developed by
            <a target="_blank" href="https://linktr.ee/__nameishai"> Vũ Đào Ngọc Hải</a>
        </div>
    </body>
    <script src="js/app_studentboard.js"></script>

</html>