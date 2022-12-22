package it.java.course.prova1.Controller;

import it.java.course.prova1.DAO.userDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "StudenteDeleteServlet", value = "/StudenteDeleteServlet")
public class StudenteDeleteServlet extends HttpServlet {

    private it.java.course.prova1.DAO.userDAO userDAO;
    public void init() {
        userDAO = new userDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);

        try {
            userDAO.deleteUser(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        String jspPage = "successStudent.jsp";
        RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
        pageName.forward(request, response);
    }
}
