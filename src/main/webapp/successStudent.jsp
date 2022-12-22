<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 22/12/22
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Title -->
        <title>Success</title>

        <!-- CSS Stylesheet -->
        <link href="style.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>
        <!-- Header of the Page -->
        <header>
            <jsp:include page="navbar.jsp"></jsp:include>
            <h1 class="display-1">Student info correctly loaded</h1>
        </header>

        <article>
            <section>
                <p>Welcome ${studenti.getFirstname} ${lastname}.</p>
                <p>Your username is ${username}.</p>
            </section>
        </article>
    </body>
</html>

