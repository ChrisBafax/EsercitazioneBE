<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 22/12/22
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
      <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Title -->
        <title>Insert Student Info</title>

        <!-- CSS Stylesheet -->
        <link href="style.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>
    <!-- Header of the Page -->
        <header>
          <jsp:include page="navbar.jsp"></jsp:include>
          <h1 class="display-1">Insert Student Info</h1>
        </header>

        <article>
            <section>
                <form action="StudentServlet" method="post" class="mb-3">
                    <label>Fist name: </label>
                    <input class="form-control" name="firstname" placeholder="Insert your first name" type="text">
                    <label>Last name: </label>
                    <input class="form-control" name="lastname" placeholder="Insert your last name" type="text">
                    <label>Username: </label>
                    <input class="form-control" name="username" placeholder="Insert your username" type="text">
                    <label>Password: </label>
                    <input class="form-control" name="password" placeholder="Insert your password" type="password">
                    <button class="btn btn-outline-success" type="submit">Log In</button>
                </form>
            </section>
        </article>

    </body>
</html>

