package it.java.course.prova1.Controller;

import it.java.course.prova1.DAO.userDAO;
import it.java.course.prova1.Model.Student;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.lang.*;

@WebServlet(name = "StudentServlet", value = "/StudentServlet")
public class StudentServlet extends HttpServlet {

    private userDAO userDAO;
    public void init() {
        userDAO = new userDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Reading the parameters got from the form
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
        String username = request.getParameter("username");
        request.setAttribute("username", username);
        String password = request.getParameter("password");
        request.setAttribute("password", password);

        // Saving data into instance of model Student()
        Student studenti = new Student();
        studenti.setFirstname(firstname);
        studenti.setLastname(lastname);
        studenti.setCountry(country);
        studenti.setEmail(email);
        studenti.setAge(age);
        studenti.setUsername(username);
        studenti.setPassword(password);

        String jspPage;

        // Try-catch box with error result if SQL Exception
        try {
            userDAO.insertUser(studenti);

            request.setAttribute("studenti", studenti);
            jspPage = "successStudent.jsp";
        } catch (SQLException e) {
            jspPage = "errorStudent.jsp";
        } catch (ClassNotFoundException e) {
            jspPage = "errorStudent.jsp";
        }

        // Output of success or error page
        RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
        pageName.forward(request, response);
    }

}
