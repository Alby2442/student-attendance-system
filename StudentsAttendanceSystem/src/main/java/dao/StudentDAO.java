package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Student;
import dbConnection.DBConnection;
import utility.PasswordEncryptor;

public class StudentDAO {

    // ---------------- REGISTER STUDENT ----------------
    public boolean createStudent(Student s) {

        boolean status = false;
        String query =
                "INSERT INTO students " +
                "(full_name, gender, date_of_birth, email, phone, address, " +
                "year_of_study, department, admission_date, username, password) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


        try (Connection con = DBConnection.getDBConnection();
        		PreparedStatement ps = con.prepareStatement(query);){

            
           
            

            ps.setString(1, s.getFullName());
            ps.setString(2, s.getGender());
            ps.setString(3, s.getDateOfBirth());
            ps.setString(4, s.getEmail());
            ps.setString(5, s.getPhone());
            ps.setString(6, s.getAddress());
            ps.setInt(7, s.getYearOfStudy());
            ps.setString(8, s.getDepartment());
            ps.setString(9, s.getAdmissionDate());
            ps.setString(10, s.getUsername());
            ps.setString(11, s.getPassword());

            int i = ps.executeUpdate();

            if (i > 0) {
                status = true;
            }

           

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }

        return status;
    }

    // ---------------- LOGIN STUDENT ----------------
    public Student loginStudent(String username, String password) {

        Student s = null;
        String query =
                "SELECT * FROM students WHERE username=? AND password=?";


        try (Connection con = DBConnection.getDBConnection();
        		PreparedStatement ps = con.prepareStatement(query);){

            

           
            

            ps.setString(1, username);

            // IMPORTANT: encrypt password before checking
            ps.setString(2, PasswordEncryptor.encryptPassword(password));

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                s = new Student();

                s.setStudentId(rs.getInt("student_id"));
                s.setFullName(rs.getString("full_name"));
                s.setGender(rs.getString("gender"));
                s.setDateOfBirth(rs.getString("date_of_birth"));
                s.setEmail(rs.getString("email"));
                s.setPhone(rs.getString("phone"));
                s.setAddress(rs.getString("address"));
                s.setYearOfStudy(rs.getInt("year_of_study"));
                s.setDepartment(rs.getString("department"));
                s.setAdmissionDate(rs.getString("admission_date"));
                s.setUsername(rs.getString("username"));
                s.setPassword(rs.getString("password"));
            }

           

        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;
    }

    // ---------------- CHECK USERNAME ----------------
    public boolean isUsernameExists(String username) {

        boolean status = false;

        try {

            Connection con = DBConnection.getDBConnection();

            String query =
            "SELECT * FROM students WHERE username=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                status = true;
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}