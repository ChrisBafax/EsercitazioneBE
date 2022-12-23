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

        <article>
            <section>
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
                        </tr>
                    </thead>

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
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </section>
        </article>
    </body>
</html>
