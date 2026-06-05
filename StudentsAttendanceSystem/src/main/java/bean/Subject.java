package bean;

public class Subject {

    private int subjectId;

    private String subjectName;

    private String subjectCode;

    private int semester;

    private String department;

    // Default Constructor

    public Subject() {

    }

    // Parameterized Constructor

    public Subject(
            int subjectId,
            String subjectName,
            String subjectCode,
            int semester,
            String department) {

        this.subjectId = subjectId;

        this.subjectName = subjectName;

        this.subjectCode = subjectCode;

        this.semester = semester;

        this.department = department;
    }

    // Getter Methods

    public int getSubjectId() {

        return subjectId;
    }

    public String getSubjectName() {

        return subjectName;
    }

    public String getSubjectCode() {

        return subjectCode;
    }

    public int getSemester() {

        return semester;
    }

    public String getDepartment() {

        return department;
    }

    // Setter Methods

    public void setSubjectId(int subjectId) {

        this.subjectId = subjectId;
    }

    public void setSubjectName(String subjectName) {

        this.subjectName = subjectName;
    }

    public void setSubjectCode(String subjectCode) {

        this.subjectCode = subjectCode;
    }

    public void setSemester(int semester) {

        this.semester = semester;
    }

    public void setDepartment(String department) {

        this.department = department;
    }

}