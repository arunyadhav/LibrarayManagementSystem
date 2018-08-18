package com.sgc.data;

import com.sgc.model.AddBook;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BookDao {

    Connection conn = MyDB.connect();
    Statement st;

    public void saveBook(AddBook book) {

        try {
            String bookId, bookTitle, bookAuthor, bookMain, bookSub, bookPublishedYear, bookPrintedYear, bookIsbn;
            bookId = book.getBookId();
            bookTitle = book.getTitle();
            bookAuthor = book.getAuthor();
            bookMain = book.getMainclass();
            bookSub = book.getSubclass();
            bookPublishedYear = book.getYop();
            bookPrintedYear = book.getLpy();
            bookIsbn = book.getIsbnno();
            int bookPages = book.getNop();
            //PreparedStatement statement;
            Statement stmt = conn.createStatement();
            String sql = "insert into books(BookId,Title,Author,MainClass,SubClass,Yop,Lpy,ISBNno,Nop) values ('" + bookId + "','" + bookTitle + "','" + bookAuthor + "','" + bookMain + "','" + bookSub + "','" + bookPublishedYear + "','" + bookPrintedYear + "','" + bookIsbn + "','" + bookPages + "')";
            stmt.executeUpdate(sql);

            //MyDB.disconnect();
        } catch (SQLException ex) {
            //Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Query Error: " + ex.getMessage());
        }
    }

    public ArrayList<AddBook> searchBook(String sid) throws ClassNotFoundException, SQLException {

        ArrayList<AddBook> sid_list = new ArrayList<>();
        //String query = "select * from books b  where bookId='" + sid + "' ";
        
        String query = "select * from books b "
                + "join mainclassification mc "
                + "on b.MainClass=mc.MainClassificationid "
                + "join subclassification sc on sc.SubClassificationId=b.SubClass "
                + "where bookId='" + sid + "' or Title='" + sid + "' or Author='" + sid + "'";
        
        System.out.println("query " + query);
        st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {
            AddBook book = new AddBook();
            book.setBookId(rs.getString(1));
            book.setTitle(rs.getString(2));
            book.setAuthor(rs.getString(3));
            book.setMainclass(rs.getString(11));
            book.setSubclass(rs.getString(13));
            book.setYop(rs.getString(6));
            book.setLpy(rs.getString(7));
            book.setIsbnno(rs.getString(8));
            book.setNop(rs.getInt(9));

            sid_list.add(book);
        }
        conn.close();
        return sid_list;
    }

    public ArrayList<AddBook> editBook(String BookId) {
              ArrayList<AddBook> upt_list = new ArrayList<>();
        try {
            
            String query = "select * from books where bookId='" + BookId + "'";
            
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while (rs.next()) {
                AddBook book = new AddBook();
                book.setBookId(rs.getString(1));
                book.setTitle(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setMainclass(rs.getString(4));
                book.setSubclass(rs.getString(5));
                book.setYop(rs.getString(6));
                book.setLpy(rs.getString(7));
                book.setIsbnno(rs.getString(8));
                book.setNop(rs.getInt(9));
                
                upt_list.add(book);
            }
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }
            return upt_list;
    }

    public ArrayList<AddBook> viewBook() {

        ArrayList<AddBook> vid_list = new ArrayList<>();
        try {
            //String query = "select * from books";
            
            String query = "select * from books b "
                + "join mainclassification mc "
                + "on b.MainClass=mc.MainClassificationid "
                + "join subclassification sc on sc.SubClassificationId=b.SubClass";
            
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddBook book = new AddBook();
                book.setBookId(rs.getString(1));
                book.setTitle(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setMainclass(rs.getString(11));
                book.setSubclass(rs.getString(13));
                book.setYop(rs.getString(6));
                book.setLpy(rs.getString(7));
                book.setIsbnno(rs.getString(8));
                book.setNop(rs.getInt(9));

                vid_list.add(book);
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vid_list;
    }

    public void updateBook(AddBook book) {

        try {
            String bookId, bookTitle, bookAuthor, bookMain, bookSub, bookPublishedYear, bookPrintedYear, bookIsbn;
            bookId = book.getBookId();
            bookTitle = book.getTitle();
            bookAuthor = book.getAuthor();
            bookMain = book.getMainclass();
            bookSub = book.getSubclass();
            bookPublishedYear = book.getYop();
            bookPrintedYear = book.getLpy();
            bookIsbn = book.getIsbnno();
            int bookPages = book.getNop();
            //PreparedStatement statement;
            Statement stmt = conn.createStatement();
            String sql = "UPDATE books SET Title='" + bookTitle
                    + "',Author='" + bookAuthor
                    + "',MainClass='" + bookMain
                    + "',SubClass='" + bookSub
                    + "',Yop='" + bookPublishedYear
                    + "',Lpy='" + bookPrintedYear
                    + "',ISBNno='" + bookIsbn
                    + "',Nop='" + bookPages
                    + "' where BookId='" + bookId + "'";
            stmt.executeUpdate(sql);

            //MyDB.disconnect();
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteBook(String BookId) {

        try {
            Statement stmt = conn.createStatement();
            String sql = "Delete from books where BookId='"+BookId+"'";
            stmt.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList<AddBook> viewBookByBookId(String bookId) {

        ArrayList<AddBook> bookList = new ArrayList<>();
        try {
            //String query = "select * from books";
            
            String query = "select * from books b "
                + "join mainclassification mc "
                + "on b.MainClass=mc.MainClassificationid "
                + "join subclassification sc on sc.SubClassificationId=b.SubClass WHERE bookId='" + bookId + "'";
            
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                AddBook book = new AddBook();
                book.setBookId(rs.getString(1));
                book.setTitle(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setMainclass(rs.getString(4));
                book.setSubclass(rs.getString(5));
                book.setYop(rs.getString(6));
                book.setLpy(rs.getString(7));
                book.setIsbnno(rs.getString(8));
                book.setNop(rs.getInt(9));

                bookList.add(book);
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(BookDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bookList;
    }

    public List<AddBook> viewSub() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
