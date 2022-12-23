<%--@elvariable id="studente" --%>
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
        <title>Success</title>

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

            <h1 class="display-1">Student info correctly loaded</h1>
        </header>

        <article>
            <section>
                <p>You may now return to the main page.</p>
                <form action="StudentGetIDServlet" method="post" class="d-flex">
                    <label>Or search for a student:</label>
                        <input class="form-control me-2" name="id" placeholder="Search by ID" type="number">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </section>
        </article>
    </body>
</html>

