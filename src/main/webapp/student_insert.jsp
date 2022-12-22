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
          <jsp:include page="navbar.jsp"/>
          <h1 class="display-1">Insert Student Info</h1>
        </header>

        <article>
            <section>
                <form action="StudentServlet" method="post" class="mb-3">
                    <label>Fist name: </label>
                    <input class="form-control" name="firstname" placeholder="Insert your first name" type="text">
                    <label>Last name: </label>
                    <input class="form-control" name="lastname" placeholder="Insert your last name" type="text">
                    <label>Country: </label>
                    <input class="form-control" name="country" placeholder="Insert your country" type="text">
                    <label>Email address: </label>
                    <input class="form-control" name="email" placeholder="Insert your email address" type="text">
                    <label>Age: </label>
                    <input class="form-control" name="age" placeholder="Insert your age" type="number">
                    <label>Username: </label>
                    <input class="form-control" name="username" placeholder="Insert your username" type="text">
                    <label>Password: </label>
                    <input class="form-control" name="password" placeholder="Insert your password" type="password">
                    <button class="btn btn-outline-success" type="submit">Add Student</button>
                </form>
            </section>



            <section>
                <form action="StudenteDeleteServlet" method="post" class="mb-3">
                    <label>Insert the ID you want to remove: </label>
                    <input class="form-control" name="id" placeholder="Insert the ID you want to remove" type="number">
                    <button class="btn btn-outline-success" type="submit">Delete Student</button>
                </form>
            </section>
        </article>

        <!-- Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>

