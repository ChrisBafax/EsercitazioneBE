package it.java.course.prova1.Controller;

import it.java.course.prova1.DAO.userDAO;
import it.java.course.prova1.Model.Student;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "StudentUpdateServlet", value = "/StudentUpdateServlet")
public class StudentUpdateServlet extends HttpServlet {


    private it.java.course.prova1.DAO.userDAO userDAO;
    public void init() {
        userDAO = new userDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// Reading the parameters got from the form
        Integer id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);
        String firstname = request.getParameter("firstname");
        request.setAttribute("firstname", firstname);
        String lastname = request.getParameter("lastname");
        request.setAttribute("lastname", lastname);
        String country = request.getParameter("country");
        request.setAttribute("country", country);
        String email = request.getParameter("email");
        request.setAttribute("email", email);
        Integer age = Integer.parseInt(request.getParameter("age"));
        request.setAttribute("age", age);

        // Saving data into instance of model Student()
        Student studenti = new Student();
        studenti.setId(id);
        studenti.setFirstname(firstname);
        studenti.setLastname(lastname);
        studenti.setCountry(country);
        studenti.setEmail(email);
        studenti.setAge(age);

        try {
            userDAO.updateUser(studenti);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect("StudentShowAllServlet");
    }
}
