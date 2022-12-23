package it.java.course.prova1.DAO;

import it.java.course.prova1.Model.Student;
import jakarta.servlet.RequestDispatcher;

import java.sql.*;
import java.util.*;

public class userDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/student?useSSL=false";
    private String jdbcUser = "root";
    private String jdbcPassword = "";

    private static final String INSERT_USERS_SQL = "INSERT INTO students" +
            "(firstname, lastname, country, email, age, username, password) VALUES" + "(?, ?, ?, ?, ?, ?, ?)";

    private static final String SELECT_USER_BY_ID =
            "SELECT id, firstname, lastname, country, email, age, username FROM students WHERE id = ?";
    private static final String SELECT_ALL_USERS =
            "SELECT id, firstname, lastname, country, email, username FROM students";
    private static final String DELETE_USERS_SQL =
            "DELETE FROM students WHERE id = ?";
    private static final String UPDATE_USERS_SQL =
            "UPDATE students SET firstname = ?, lastname = ?, country = ?, email = ?, age = ? WHERE id = ?";

    public userDAO() {
    }

    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPassword);
        System.out.println("Connected to Database.");
        return connection;
    }

    public void insertUser(Student studenti) throws SQLException, ClassNotFoundException {
        System.out.println(INSERT_USERS_SQL);
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL); {
            preparedStatement.setString(1, studenti.getFirstname());
            preparedStatement.setString(2, studenti.getLastname());
            preparedStatement.setString(3, studenti.getCountry());
            preparedStatement.setString(4, studenti.getEmail());
            preparedStatement.setInt(5, studenti.getAge());
            preparedStatement.setString(6, studenti.getUsername());
            preparedStatement.setString(7, studenti.getPassword());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }
    }

    public Student selectUser(int id) {
        Student studente = new Student();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String country = rs.getString("country");
                String email = rs.getString("email");
                int age = rs.getInt("age");
                String username = rs.getString("username");
                studente = new Student(id, firstname, lastname, country, email, age, username);
            }

        } catch (SQLException e) {
            printSQLException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        return studente;
    }

    public List<Student> selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<Student> studente = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String country = rs.getString("country");
                String email = rs.getString("email");
                int age = rs.getInt("age");
                String username = rs.getString("username");
                studente.add(new Student(id, firstname, lastname, country, email, age, username));
            }

        } catch (SQLException e) {
            printSQLException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return studente;
    }

    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return rowDeleted;
    }

    public boolean updateUser(Student studenti) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
            statement.setString(1, studenti.getFirstname());
            statement.setString(2, studenti.getLastname());
            statement.setString(3, studenti.getCountry());
            statement.setString(4, studenti.getEmail());
            statement.setInt(5, studenti.getAge());
            statement.setInt(6, studenti.getId());

            rowUpdated = statement.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
