
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author usama
 */
public class DbHandler {
    
    private static String DB_URL;
	private static String DB_User;
	private static String DB_PWD;
	public static Connection con;
	
	public DbHandler()
	{
		DB_URL="jdbc:mysql://localhost:3306/arthouse";
		DB_User="root";
		DB_PWD="";
	}
	
	public void openConnection()
	{
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(DB_URL, DB_User, DB_PWD);
		} catch (SQLException | ClassNotFoundException e) {
		}
	}
        
        
        public Boolean artistLogin(String uname, String pwd) throws SQLException{
            openConnection();
         PreparedStatement ps1;
		String query1="select * from artist where username = ? and password = ?";
       
            ps1 = con.prepareStatement(query1);
      
		ps1.setString(1, uname);
		ps1.setString(2, pwd);
		ResultSet s;
               
                s=ps1.executeQuery();
                Boolean a=false;
                if(s.next()){
               a=true;
                }
            
            
            
            
            return a;
           
           }
        
          public Boolean buyerLogin(String uname, String pwd) throws SQLException{
              openConnection();
         PreparedStatement ps1;
		String query1="select * from buyer where username = ? and password = ?";
       
            ps1 = con.prepareStatement(query1);
      
		ps1.setString(1, uname);
		ps1.setString(2, pwd);
		ResultSet s;
               
                s=ps1.executeQuery();
                Boolean a=false;
                if(s.next()){
               a=true;
                }
            
            
            
            
            return a;
           
           }
        
       
            
        
        
        
        
        
        
}


