package it.java.course.prova1;

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

        Student studenti = new Student();
        studenti.setFirstname(firstname);
        studenti.setLastname(lastname);
        studenti.setCountry(country);
        studenti.setEmail(email);
        studenti.setAge(age);
        studenti.setUsername(username);
        studenti.setPassword(password);

        try {
            userDAO.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        try {
            userDAO.insertUser(studenti);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("studenti", studenti);

        String jspPage = "successStudent.jsp";
        RequestDispatcher pageName = request.getRequestDispatcher(jspPage);
        pageName.forward(request, response);
    }

}
