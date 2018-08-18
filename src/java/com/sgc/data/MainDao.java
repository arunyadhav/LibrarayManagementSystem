package com.sgc.data;

import com.sgc.model.AddBook;
import com.sgc.model.AddMain;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MainDao {

    Connection conn = MyDB.connect();
    Statement st;

    public void saveMain(AddMain main) {

        try {
            String MainClassId, MainClass;
            MainClassId = main.getMainClassificationId();
            MainClass = main.getMainClassification();

            //PreparedStatement statement;
            Statement stmt = conn.createStatement();
            String sql = "insert into mainclassification(MainClassificationId,MainClassification) values ('" + MainClassId + "','" + MainClass + "')";
            stmt.executeUpdate(sql);

            //MyDB.disconnect();
        } catch (SQLException ex) {
            //Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Query Error: " + ex.getMessage());
        }
    }

    public ArrayList<AddMain> searchMain(String sid) {
        ArrayList<AddMain> sid_list = new ArrayList<>();
        try {

            String query = "select * from mainclassification where MainClassificationId='" + sid + "' or MainClassification='" + sid + "'";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddMain main = new AddMain();
                main.setMainClassificationId(rs.getString(1));
                main.setMainClassification(rs.getString(2));
                sid_list.add(main);
            }
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(MainDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sid_list;
    }

    public ArrayList<AddMain> viewMain() {

        ArrayList<AddMain> vid_list = new ArrayList<>();
        try {
            String query = "select * from mainclassification";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddMain main = new AddMain();
                main.setMainClassificationId(rs.getString(1));
                main.setMainClassification(rs.getString(2));
                

                vid_list.add(main);
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(MainDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vid_list;
    }
    
    public ArrayList<AddMain> editMain(String MainId)  {
          ArrayList<AddMain> upt_list = new ArrayList<>();
        try {
            
            String query = "select * from mainclassification where MainClassificationId='" + MainId + "'";
            
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while(rs.next()){
                AddMain main = new AddMain();
                main.setMainClassificationId(rs.getString(1));
                main.setMainClassification(rs.getString(2));
                
                
                upt_list.add(main);
            }
            conn.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(MainDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return upt_list;
    }
    
    
      public void updateMain(AddMain main) {

        try {
            String MainClassId, MainClass;
            MainClassId = main.getMainClassificationId();
            MainClass = main.getMainClassification();
            
            //PreparedStatement statement;
            Statement stmt = conn.createStatement();
            String sql = "UPDATE mainclassification SET MainClassification='" + MainClass
                    + "'where mainClassificationId='" + MainClassId + "'";
            stmt.executeUpdate(sql);

            //MyDB.disconnect();
        } catch (SQLException ex) {
            Logger.getLogger(MainDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
      
       public void deleteMain(String MainClassId) {

        try {
            Statement stmt = conn.createStatement();
            String sql = "Delete from mainclassification where MainClassificationId='"+MainClassId+"'";
            stmt.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
       
       public ArrayList<AddMain> viewMainBySub() {

        ArrayList<AddMain> vid_list = new ArrayList<>();
        try {
            String query = "select MainClassification from mainclassification";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddMain main = new AddMain();
               
                main.setMainClassification(rs.getString(1));
                

                vid_list.add(main);
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(MainDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vid_list;
    }


}
