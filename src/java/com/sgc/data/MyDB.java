
package com.sgc.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDB {
    
    // JDBC Driver Name
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    
    // Database URL
    static final String URL = "jdbc:mysql://localhost/jlib?useSSL=false";
    
    // Database Credentials
    static final String USER = "root";
    static final String PASS = "manager";
    
    // Connection variable
    static Connection con = null;
    
    // Create method for the connection
    public static Connection connect(){
        try{
            // Registering JDBC Driver
            Class.forName(JDBC_DRIVER);
            System.out.println("JDBC Registering success");
            // Open a connection
            con = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("Opening connection success");
            
            System.out.println("Database Connection Successful");
        }
        catch(ClassNotFoundException ec){
            // Exception occured for the Class.forName error
            System.out.println("Class Not Found : " + ec);
        }
        catch(SQLException es){
            // Exceptin occured for the con DriverManager.getConnection
            System.out.println("SQL Exception : " + es);
        }
        finally{
            //dbclose();
        }
        return con;
    }
    
    public static void dbclose(){
        if(con != null){
                try {
                    con.close();
                    System.out.println("Database Connection Closed");
                } catch (SQLException es) {
                    System.out.println("Connection Close SQL Exception : " + es);
                }
            }
    }

   
}