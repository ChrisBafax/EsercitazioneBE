package it.java.course.prova1.Controller;

import it.java.course.prova1.DAO.userDAO;
import it.java.course.prova1.Model.Student;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentShowAll", value = "/StudentShowAllServlet")
public class StudentShowAllServlet extends HttpServlet {

    private userDAO userDAO;

    public void init() {
        userDAO = new userDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> listStudent = null;
        String jspPage = "allStudent.jsp";

        listStudent = userDAO.selectAllUsers();
        request.setAttribute("listStudent", listStudent);

        RequestDispatcher dispatcher = request.getRequestDispatcher(jspPage);
        dispatcher.forward(request, response);
    }
}
