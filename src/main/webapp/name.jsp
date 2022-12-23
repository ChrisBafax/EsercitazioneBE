<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 21/12/22
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Title -->
        <title>Name</title>

        <!-- Style of the page -->
        <jsp:include page="style.jsp"/>
    </head>

    <body>
        <!-- Header of the Page -->
        <header>
            <!-- Navbar -->
            <jsp:include page="navbar.jsp">
                <jsp:param name="name" value="red"/>
            </jsp:include>
            <h1 class="display-1">Name</h1>
        </header>

        <!-- First article of the Page-->
        <article>
            <p>Your name is:</p>
            <p>${name}</p>
        </article>
    </body>
</html>
