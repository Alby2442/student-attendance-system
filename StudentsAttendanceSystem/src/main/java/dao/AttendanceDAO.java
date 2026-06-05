package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.LinkedHashMap;
import java.util.Map;

import bean.Attendance;
import dbConnection.DBConnection;

public class AttendanceDAO {

    /* INSERT ATTENDANCE */

    public boolean markAttendance(
    Attendance attendance){

        boolean status = false;

        try{

            Connection con =
            DBConnection.getDBConnection();

            String query =

            "insert into attendance(student_id,subject_id,attendance_date,status,remarks) values(?,?,?,?,?)";

            PreparedStatement ps =
            con.prepareStatement(query);

            ps.setInt(
            1,
            attendance.getStudentId()
            );

            ps.setInt(
            2,
            attendance.getSubjectId()
            );

            ps.setString(
            3,
            attendance.getAttendanceDate()
            );

            ps.setString(
            4,
            attendance.getStatus()
            );

            ps.setString(
            5,
            attendance.getRemarks()
            );

            int row =
            ps.executeUpdate();

            if(row > 0){

                status = true;
            }

        }catch(Exception e){

            e.printStackTrace();
        }

        return status;
    }

    /* VIEW ATTENDANCE REPORT */

    public Map<String,int[]>
    getAttendanceReport(
    int studentId){

        Map<String,int[]> report =
        new LinkedHashMap<String,int[]>();

        try{

            Connection con =
            DBConnection.getDBConnection();

            String query =

            "select subjects.subject_name, "

            + "count(attendance.attendance_id) as total_classes, "

            + "count(case when attendance.status='Present' then 1 end) as present_classes "

            + "from attendance "

            + "join subjects "

            + "on attendance.subject_id = subjects.subject_id "

            + "where attendance.student_id=? "

            + "group by subjects.subject_name";

            PreparedStatement ps =
            con.prepareStatement(query);

            ps.setInt(1, studentId);

            ResultSet rs =
            ps.executeQuery();

            while(rs.next()){

                String subjectName =
                rs.getString("subject_name");

                int totalClasses =
                rs.getInt("total_classes");

                int presentClasses =
                rs.getInt("present_classes");

                int[] data =
                {
                    totalClasses,
                    presentClasses
                };

                report.put(
                subjectName,
                data
                );
            }

        }catch(Exception e){

            e.printStackTrace();
        }

        return report;
    }
}