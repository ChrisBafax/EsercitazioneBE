package it.java.course.prova1.Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogInServlet", value = "/LogInServlet")
public class LogInServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        request.setAttribute("username", username);
        String password = request.getParameter("password");
        request.setAttribute("password", password);

        final String validUsername = "Christian";
        final String validPassword = "Password";

        if (username.equals(validUsername)) {
            if (password.equals(validPassword)) {
                String jspPage = "login.jsp";
                RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
                pageName.forward(request, response);
            } else {
                String jspPage = "failedLogin.jsp";
                String errorLogIn = "password";
                request.setAttribute("errorLogIn", errorLogIn);
                RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
                pageName.forward(request, response);
            }
        } else {
            String jspPage = "failedLogin.jsp";
            String errorLogIn = "username";
            request.setAttribute("errorLogIn", errorLogIn);
            RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
            pageName.forward(request, response);
        }
    }
}
