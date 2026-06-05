package bean;

public class Attendance {

    private int attendanceId;

    private int studentId;

    private int subjectId;

    private String attendanceDate;

    private String status;

    private String remarks;

    // Default Constructor

    public Attendance() {

    }

    // Parameterized Constructor

    public Attendance(
            int attendanceId,
            int studentId,
            int subjectId,
            String attendanceDate,
            String status,
            String remarks) {

        this.attendanceId = attendanceId;

        this.studentId = studentId;

        this.subjectId = subjectId;

        this.attendanceDate = attendanceDate;

        this.status = status;

        this.remarks = remarks;
    }

    // Getter Methods

    public int getAttendanceId() {

        return attendanceId;
    }

    public int getStudentId() {

        return studentId;
    }

    public int getSubjectId() {

        return subjectId;
    }

    public String getAttendanceDate() {

        return attendanceDate;
    }

    public String getStatus() {

        return status;
    }

    public String getRemarks() {

        return remarks;
    }

    // Setter Methods

    public void setAttendanceId(int attendanceId) {

        this.attendanceId = attendanceId;
    }

    public void setStudentId(int studentId) {

        this.studentId = studentId;
    }

    public void setSubjectId(int subjectId) {

        this.subjectId = subjectId;
    }

    public void setAttendanceDate(String attendanceDate) {

        this.attendanceDate = attendanceDate;
    }

    public void setStatus(String status) {

        this.status = status;
    }

    public void setRemarks(String remarks) {

        this.remarks = remarks;
    }
}