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
        <!-- Title -->
        <title>Student Info</title>

        <!-- Style of the page -->
        <jsp:include page="style.jsp"/>
    </head>

    <body>
        <!-- Header of the Page -->
        <header>
            <!-- Navbar -->
            <jsp:include page="navbar.jsp">
                <jsp:param name="student" value="red"/>
            </jsp:include>

            <h1 class="display-1">Student ${studente.getId} info:</h1>
        </header>

        <!-- First article fo the page -->
        <article>
            <!-- Show all info about the selected student -->
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

            <!-- Return to the mail page or search another student -->
            <section>
                <p>You may now return to the main page.</p>
                <form action="StudentGetIDServlet" method="post" class="d-flex">
                    <label>Or search for another student:</label>
                    <input class="form-control me-2" name="id" placeholder="Search by ID" type="number">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </section>
        </article>

    </body>
</html>

