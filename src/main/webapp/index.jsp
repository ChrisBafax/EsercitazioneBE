<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Title -->
        <title>Prova1</title>

        <!-- CSS Stylesheet -->
        <link href="style.css" rel="stylesheet" type="text/css"/>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>
        <!-- Header of the Page -->
        <header>
            <jsp:include page="navbar.jsp"/>
            <h1 class="display-1">Hello, world!</h1>
        </header>

        <!-- First article of the Page-->
        <article>
            <!-- First section of the Article -->
            <section>
                <a href="hello-servlet">Hello Servlet</a>
            </section>

            <!-- Second section of the Article -->
            <section>
                <a href="Servlet1">Servlet1</a>
            </section>

            <!-- Third section of the Article -->
            <section>
                <br>
                <p>Insert the name you want to search:</p>
                <form action="FormServlet1" method="post" class="d-flex">
                    <label>
                        <input class="form-control me-2" name="name" placeholder="Search your name">
                    </label>
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </section>

            <!-- Forth section of the Article -->
            <section>
                <br>
                <br>
                <br>
                <form action="LogInServlet" method="post" class="mb-3">
                    <label>Username: </label>
                        <input class="form-control" name="username" placeholder="Insert your username" type="text">
                    <label>Password: </label>
                        <input class="form-control" name="password" placeholder="Insert your password" type="password">
                    <button class="btn btn-outline-success" type="submit">Log In</button>
                </form>
            </section>
        </article>

        <!-- Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>