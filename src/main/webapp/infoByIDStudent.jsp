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
        <title>Student Info</title>

        <!-- CSS Stylesheet -->
        <link href="style.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>
        <!-- Header of the Page -->
        <header>
            <jsp:include page="navbar.jsp"/>
            <h1 class="display-1">Student ${studente.getId} info:</h1>
        </header>

        <article>
            <section>
                <p>You have selected the following student:</p>

                <table>
                    <caption>Student ID: ${studente.getId}</caption>
                    <tbody>
                        <tr>
                            <th>First name:</th>
                            <td>${studente.getFirstname}</td>
                        </tr>
                        <tr>
                            <th>Last name:</th>
                            <td>${studente.getLastname}</td>
                        </tr>
                        <tr>
                            <th>Country:</th>
                            <td>${studente.getCountry}</td>
                        </tr>
                        <tr>
                            <th>Email:</th>
                            <td>${studente.getEmail}</td>
                        </tr>
                        <tr>
                            <th>Age:</th>
                            <td>${studente.getAge}</td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <section>
                <p>You may now return to the main page.</p>
                <form action="StudentGetIDServlet" method="post" class="d-flex">
                    <label>Or search for another student:</label>
                    <input class="form-control me-2" name="id" placeholder="Search by ID" type="number">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </section>
        </article>

        <!-- Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>

