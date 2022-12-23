package it.java.course.prova1.Controller;

import it.java.course.prova1.DAO.userDAO;
import it.java.course.prova1.Model.Student;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "StudentUpdateInfoServlet", value = "/StudentUpdateInfoServlet")
public class StudentUpdateInfoServlet extends HttpServlet {

    private it.java.course.prova1.DAO.userDAO userDAO;
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


        String jspPage = "studentEdit.jsp";

        Student studente = new Student();
        studente = userDAO.selectUser(id);

        request.setAttribute("studente", studente);

        RequestDispatcher dispatcher = request.getRequestDispatcher(jspPage);
        dispatcher.forward(request, response);
    }
}
