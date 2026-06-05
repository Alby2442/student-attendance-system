package bean;

public class Student {

    private int studentId;

    private String fullName;

    private String gender;

    private String dateOfBirth;

    private String email;

    private String phone;

    private String address;

    private int yearOfStudy;

    private String department;

    private String admissionDate;

    private String username;

    private String password;

    // Default Constructor

    public Student() {

    }

    // Parameterized Constructor

    public Student(
            int studentId,
            String fullName,
            String gender,
            String dateOfBirth,
            String email,
            String phone,
            String address,
            int yearOfStudy,
            String department,
            String admissionDate,
            String username,
            String password) {

        this.studentId = studentId;

        this.fullName = fullName;

        this.gender = gender;

        this.dateOfBirth = dateOfBirth;

        this.email = email;

        this.phone = phone;

        this.address = address;

        this.yearOfStudy = yearOfStudy;

        this.department = department;

        this.admissionDate = admissionDate;

        this.username = username;

        this.password = password;
    }

    // Getter Methods

    public int getStudentId() {

        return studentId;
    }

    public String getFullName() {

        return fullName;
    }

    public String getGender() {

        return gender;
    }

    public String getDateOfBirth() {

        return dateOfBirth;
    }

    public String getEmail() {

        return email;
    }

    public String getPhone() {

        return phone;
    }

    public String getAddress() {

        return address;
    }

    public int getYearOfStudy() {

        return yearOfStudy;
    }

    public String getDepartment() {

        return department;
    }

    public String getAdmissionDate() {

        return admissionDate;
    }

    public String getUsername() {

        return username;
    }

    public String getPassword() {

        return password;
    }

    // Setter Methods

    public void setStudentId(int studentId) {

        this.studentId = studentId;
    }

    public void setFullName(String fullName) {

        this.fullName = fullName;
    }

    public void setGender(String gender) {

        this.gender = gender;
    }

    public void setDateOfBirth(String dateOfBirth) {

        this.dateOfBirth = dateOfBirth;
    }

    public void setEmail(String email) {

        this.email = email;
    }

    public void setPhone(String phone) {

        this.phone = phone;
    }

    public void setAddress(String address) {

        this.address = address;
    }

    public void setYearOfStudy(int yearOfStudy) {

        this.yearOfStudy = yearOfStudy;
    }

    public void setDepartment(String department) {

        this.department = department;
    }

    public void setAdmissionDate(String admissionDate) {

        this.admissionDate = admissionDate;
    }

    public void setUsername(String username) {

        this.username = username;
    }

    public void setPassword(String password) {

        this.password = password;
    }

}