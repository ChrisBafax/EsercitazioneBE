<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Title -->
        <title>ChrisBafax</title>

        <!-- Style of the page -->
        <jsp:include page="style.jsp"/>
    </head>

    <body>
        <!-- Header of the Page -->
        <header>
            <!-- Navbar -->
            <jsp:include page="navbar.jsp">
                <jsp:param name="home" value="red"/>
            </jsp:include>

            <h1 class="display-1">Hello, world!</h1>
        </header>

        <!-- First article of the Page-->
        <article>
            <!-- First section of the Article -->
            <section>
                <a href="hello-servlet">Hello Servlet</a>
            </section>

            <!-- Second section of the Article -->
            <section>
                <a href="Servlet1">Servlet1</a>
            </section>

            <!-- Third section of the Article -->
            <section>
                <br>
                <p>Insert the name you want to search:</p>
                <form action="FormServlet1" method="post" class="d-flex">
                    <label>
                        <input class="form-control me-2" name="name" placeholder="Search your name">
                    </label>
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </section>

            <!-- Forth section of the Article -->
            <section>
                <br>
                <br>
                <br>
                <form action="LogInServlet" method="post" class="mb-3">
                    <label>Username: </label>
                        <input class="form-control" name="username" placeholder="Insert your username" type="text">
                    <label>Password: </label>
                        <input class="form-control" name="password" placeholder="Insert your password" type="password">
                    <button class="btn btn-outline-success" type="submit">Log In</button>
                </form>
            </section>
        </article>
    </body>
</html>