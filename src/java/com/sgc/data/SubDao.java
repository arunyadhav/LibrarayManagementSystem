package com.sgc.data;

import com.sgc.model.AddSub;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SubDao {

    Connection conn = MyDB.connect();
    Statement st;

    public void saveSub(AddSub sub) {

        try {
            String SubClassId, SubClass, MainClassId;
            SubClassId = sub.getSubClassId();
            SubClass = sub.getSubClass();
            MainClassId = sub.getMainClassId();

            //PreparedStatement statement;
            Statement stmt = conn.createStatement();
            String sql = "insert into subclassification(SubClassificationId,SubClassification,MainClassificationId) values ('" + SubClassId + "','" + SubClass + "','" + MainClassId + "')";
            stmt.executeUpdate(sql);

            //MyDB.disconnect();
        } catch (SQLException ex) {
            //Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Query Error: " + ex.getMessage());
        }
    }

    public ArrayList<AddSub> viewSub() {

        ArrayList<AddSub> vid_list = new ArrayList<>();
        try {
            String query = " select * from subclassification s join mainclassification m on m.MainClassificationId=s.MainClassificationId";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddSub sub = new AddSub();
                sub.setSubClassId(rs.getString(1));
                sub.setSubClass(rs.getString(2));
                sub.setMainClass(rs.getString(5));

                vid_list.add(sub);
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(SubDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vid_list;
    }

    public ArrayList<AddSub> viewSubByMainId(String mainClassificationId) {

        ArrayList<AddSub> vid_list = new ArrayList<>();
        try {
            String query = "select * from subclassification where MainClassificationId = '" + mainClassificationId + "'";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddSub sub = new AddSub();
                sub.setSubClassId(rs.getString(1));
                sub.setSubClass(rs.getString(2));

                vid_list.add(sub);
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(SubDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vid_list;
    }

    public void updateSub(AddSub sub) {

        try {
            String SubClassId, SubClass, MainClassId, MainClass;
            SubClassId = sub.getSubClassId();
            SubClass = sub.getSubClass();
            MainClassId = sub.getMainClassId();
            MainClass = sub.getMainClass();

            //PreparedStatement statement;
            Statement stmt = conn.createStatement();
            String sql = "UPDATE subclassification SET SubClassification='" + SubClass + "' where SubClassificationId='" + SubClassId + "'";

            stmt.executeUpdate(sql);

            //MyDB.disconnect();
        } catch (SQLException ex) {
            Logger.getLogger(MainDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteSub(String SubClassId) {

        try {
            Statement stmt = conn.createStatement();
            String sql = "Delete from subclassification where SubClassificationId='" + SubClassId + "'";
            stmt.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList<AddSub> searchSub(String sid) {
        ArrayList<AddSub> sid_list = new ArrayList<>();
        try {

            String query = "select * from subclassification where SubClassificationId='" + sid + "' or SubClassification='" + sid + "' or MainClassificationId='" + sid + "'";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddSub sub = new AddSub();
                sub.setSubClassId(rs.getString(1));
                sub.setSubClass(rs.getString(2));
                sid_list.add(sub);
            }
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(SubDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sid_list;
    }

    public ArrayList<AddSub> editSub(String SubId) {
        ArrayList<AddSub> upt_list = new ArrayList<>();
        try {

            String query = " select * from subclassification s  join mainclassification m on m.MainClassificationId=s.MainClassificationId where SubClassificationId='" + SubId + "'";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddSub sub = new AddSub();
                sub.setSubClassId(rs.getString(1));
                sub.setSubClass(rs.getString(2));
                sub.setMainClassId(rs.getString(3));
                sub.setMainClass(rs.getString(5));

                upt_list.add(sub);
            }
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(SubDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return upt_list;
    }

}
