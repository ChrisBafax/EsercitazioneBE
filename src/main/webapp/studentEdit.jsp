<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 23/12/22
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
        <head>
            <title>Edit student ${studente.getId()}</title>

            <!-- Style of the page -->
            <jsp:include page="style.jsp"/>
        </head>
    <body>
        <header>
            <!-- Navbar -->
            <jsp:include page="navbar.jsp">
                <jsp:param name="allStudents" value="red"/>
            </jsp:include>

            <h1 class="display-1">Edit student with ID: ${studente.getId()}</h1>
        </header>

        <article>
            <section>
                <form action="StudentUpdateServlet" method="post" class="mb-3">
                    <label>ID: </label>
                    <input class="form-control" name="id" value="${studente.getId()}" type="number" disabled>
                    <label>Fist name: </label>
                    <input class="form-control" name="firstname" value="${studente.getFirstname()}" placeholder="Insert the new first name" type="text">
                    <label>Last name: </label>
                    <input class="form-control" name="lastname" value="${studente.getLastname()}" placeholder="Insert the new last name" type="text">
                    <label>Country: </label>
                    <input class="form-control" name="country" value="${studente.getCountry()}" placeholder="Insert the new country" type="text">
                    <label>Email address: </label>
                    <input class="form-control" name="email" value="${studente.getEmail()}" placeholder="Insert the new email address" type="text">
                    <label>Age: </label>
                    <input class="form-control" name="age" value="${studente.getAge()}" placeholder="Insert the new age" type="number">
                    <button class="btn btn-outline-success" type="submit">Confirm edit</button>
                </form>
            </section>
        </article>
    </body>
</html>
