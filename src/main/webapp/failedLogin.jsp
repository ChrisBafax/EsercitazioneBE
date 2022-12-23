<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 22/12/22
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
    <head>
        <!-- Title -->
        <title>Failed login</title>

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

            <h1 class="display-1">Failed Log in</h1>
        </header>

        <article>
              <section>
                  <p>Your ${errorLogIn} is wrong.</p>
                  <a href="Home">Try again.</a>
              </section>
        </article>
    </body>
</html>
