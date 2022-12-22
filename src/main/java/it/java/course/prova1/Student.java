package it.java.course.prova1;

public class Student {
    protected int id;
    private String firstname;
    private String lastname;
    private String country;
    private String email;
    private int age;
    private String username;
    private String password;

    public Student(String firstname, String lastname, String country, String email, int age, String username, String password) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.country = country;
        this.email = email;
        this.age = age;
        this.username = username;
        this.password = password;
    }

    public Student(int id, String firstname, String lastname, String country, String email, int age, String username, String password) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.country = country;
        this.email = email;
        this.age = age;
        this.username = username;
        this.password = password;
    }

    public Student(int id, String firstname, String lastname, String country, String email, int age, String username) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.country = country;
        this.age = age;
        this.email = email;
        this.username = username;
    }

    public Student() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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
