package it.java.course.prova1.Controller;

import it.java.course.prova1.DAO.userDAO;
import it.java.course.prova1.Model.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "StudentGetIDServlet", value = "/StudentGetIDServlet")
public class StudentGetIDServlet extends HttpServlet {

    private userDAO userDAO;
    public void init() {
        userDAO = new userDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);

        try {
            userDAO.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        Student studente = new Student();
        studente = userDAO.selectUser(id);

        request.setAttribute("studente", studente);

        String jspPage = "infoByIDStudent.jsp";
        RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
        pageName.forward(request, response);
    }

}