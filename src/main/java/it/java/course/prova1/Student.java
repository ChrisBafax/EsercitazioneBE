package it.java.course.prova1;

public class Student {
    private String firstname;
    private String lastname;
    private String country;
    private String email;
    private String username;
    private String password;

    public Student(String firstname, String lastname, String country, String email,String username, String password) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.country = country;
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public Student() {

    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getUsername() {
        return username;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }



}
