package it.java.course.prova1.Controller;

import it.java.course.prova1.DAO.userDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "StudenteDeleteButtonServlet", value = "/StudenteDeleteButtonServlet")
public class StudenteDeleteButtonServlet extends HttpServlet {

    private userDAO userDAO;
    public void init() {
        userDAO = new userDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);
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

        response.sendRedirect("StudentShowAllServlet");
    }
}
