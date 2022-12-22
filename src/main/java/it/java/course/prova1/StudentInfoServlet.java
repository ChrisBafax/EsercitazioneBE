package it.java.course.prova1;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "StudentInfoServlet", value = "/StudentInfoServlet")
public class StudentInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jspPage = "student_insert.jsp";
        RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
        pageName.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
