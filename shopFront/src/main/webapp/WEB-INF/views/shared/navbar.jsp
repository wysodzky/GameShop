<%@ page contentType="text/html;charset=ISO-8859-2" language="java" pageEncoding="ISO-8859-2" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="${contextRoot}/home">Sprzeda� gier PS4/PS3/XBOX/PC</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li id="about" class="nav-item">
                    <a class="nav-link" href="${contextRoot}/about">O nas</a>
                </li>
                <li id="listProducts" class="nav-item">
                    <a class="nav-link" href="${contextRoot}/show/all/products">Lista produkt�w</a>
                </li>
                <li id="contact" class="nav-item">
                    <a class="nav-link" href="${contextRoot}/contact">Kontakt</a>
                </li>
                <li id="manageProducts" class="nav-item">
                    <a class="nav-link" href="${contextRoot}/manage/products">Zarz�dzaj produktami</a>
                </li>

                <li id="register" class="nav-item">
                    <a class="nav-link" href="${contextRoot}/register">Zarejestruj si�</a>
                </li>
                <li id="login" class="nav-item">
                    <a class="nav-link"  href="${contextRoot}/login">Zaloguj si�</a>
                </li>

            </ul>



        </div>
    </div>
</nav>