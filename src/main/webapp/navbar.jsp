<%--
  Created by IntelliJ IDEA.
  User: christianbafaro
  Date: 22/12/22
  Time: 09:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Title -->
        <title>navbar</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg fixed-top" style="background-color: #e3f2fd;">
            <div class="container-fluid">
                <a class="navbar-brand" href="Home">ChrisBafax</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <!-- First option -->
                        <li class="nav-item">
                            <a class="nav-link" style=" color: ${param.home}" aria-current="page" href="Home">Home</a>
                        </li>
                        <!-- Second option -->
                        <li class="nav-item">
                            <a class="nav-link" style=" color: ${param.name}" href="Servlet1">Name</a>
                        </li>
                        <!-- Third option -->
                        <li class="nav-item">
                            <a class="nav-link" style=" color: ${param.student}" href="StudentInfoServlet">Student</a>
                        </li>
                        <!-- Forth option -->
                        <li class="nav-item">
                            <a class="nav-link" style=" color: ${param.allStudents}" href="<%=request.getContextPath()%>/StudentShowAllServlet">All students</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
