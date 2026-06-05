package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Subject;
import dbConnection.DBConnection;

public class SubjectDAO {

    /* GET ALL SUBJECTS */

	
	  public ArrayList<Subject> getAllSubjects(){
		  ArrayList<Subject> list = new ArrayList<>();
	  
	  try{
	  
	  Connection con = DBConnection.getDBConnection();
	  
	  String query = "select * from subjects";
	  
	  PreparedStatement ps = con.prepareStatement(query);
	  
	  ResultSet rs = ps.executeQuery();
	  
	  while(rs.next()){
	  
	  Subject s = new Subject();
	  
	  s.setSubjectId( rs.getInt("subject_id") );
	  
	  s.setSubjectName( rs.getString("subject_name") );
	  
	  s.setSubjectCode( rs.getString("subject_code") );
	  
	  s.setSemester( rs.getInt("semester") );
	  
	  s.setDepartment( rs.getString("department") );
	  
	  list.add(s); }
	  
	  } catch(Exception e){
	  
	  e.printStackTrace(); }
	  
	  return list; }
	 

    /* GET SUBJECT NAME BY ID */

    public String getSubjectNameById(
    int subjectId){

        String subjectName = "";

        try{

            Connection con =
            DBConnection.getDBConnection();

            String query =
            "select subject_name from subjects where subject_id=?";

            PreparedStatement ps =
            con.prepareStatement(query);

            ps.setInt(1, subjectId);

            ResultSet rs =
            ps.executeQuery();

            if(rs.next()){

                subjectName =
                rs.getString("subject_name");
            }

        }catch(Exception e){

            e.printStackTrace();
        }

        return subjectName;
    }
}