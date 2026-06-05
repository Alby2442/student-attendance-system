package dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
private static final String HOST="127.0.0.1";
private static final String PORT="3306";
private static final String DATABASE="student_attendance_db";
private static final String USERNAME="root";
private static final String PASSWORD="";

	public static Connection getDBConnection()throws SQLException{
		String url="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error:"+e);
		}
		
		return DriverManager.getConnection(url,USERNAME,PASSWORD);
	}


}
