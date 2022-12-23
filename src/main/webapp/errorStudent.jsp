<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 23/12/22
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Title -->
        <title>Error</title>

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

            <h1 class="display-1">An error has occurred.</h1>
        </header>

        <article>
              <section>
                    <p>You may now return to the main page.</p>
              </section>
        </article>

    </body>
</html>


