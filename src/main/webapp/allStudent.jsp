<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 23/12/22
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>

        <!-- Style of the page -->
        <jsp:include page="style.jsp"/>
    </head>
    <body>
        <!-- Header of the Page -->
        <header>
            <!-- Navbar -->
            <jsp:include page="navbar.jsp">
                <jsp:param name="allStudents" value="red"/>
            </jsp:include>

            <h1 class="display-1">All infos.</h1>
        </header>

        <!-- First article of the page -->
        <article>
            <section>
                <!-- Table with all Students data -->
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Country</th>
                            <th>Email</th>
                            <th>Age</th>
                            <th>Username</th>
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <!-- Using forEach to cycle through the database table Students -->
                    <tbody>
                        <c:forEach var="student" items="${listStudent}">
                            <tr>
                                <td><c:out value="${student.getId()}"/></td>
                                <td><c:out value="${student.getFirstname()}"/></td>
                                <td><c:out value="${student.getLastname()}"/></td>
                                <td><c:out value="${student.getCountry()}"/></td>
                                <td><c:out value="${student.getEmail()}"/></td>
                                <td><c:out value="${student.getAge()}"/></td>
                                <td><c:out value="${student.getUsername()}"/></td>

                                <!-- Options to delete or edit the student data -->
                                <td>
                                    <form action="StudenteDeleteButtonServlet" method="post" class="d-flex">
                                        <input class="form-control me-2" type="hidden" name="id" value="<c:out value="${student.getId()}"/>">
                                        <button type="submit"><i class="bi bi-trash3"></i></button>
                                    </form>
                                    <form action="StudentUpdateInfoServlet" method="post" class="d-flex">
                                        <input class="form-control me-2" type="hidden" name="id" value="<c:out value="${student.getId()}"/>">
                                        <button type="submit"><i class="bi bi-pencil-square"></i></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </section>
        </article>
    </body>
</html>
