
package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.model.AddBook;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/SearchController"})
public class SearchController extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if (request.getParameter("search")!= null){
        String sid = request.getParameter("sid");
        ArrayList<AddBook> BookList= new ArrayList<>();
        BookDao dao = new BookDao();
        try {
            BookList = dao.searchBook(sid);
            request.setAttribute("piList", BookList);
            RequestDispatcher view = request.getRequestDispatcher("AddBook.jsp");
            view.forward(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
        else if (request.getParameter("view")!= null){
         // String sid = request.getParameter("sid");
        ArrayList<AddBook> ViewList= new ArrayList<>();
        BookDao dao = new BookDao();
        
            ViewList = dao.viewBook();
            request.setAttribute("piList", ViewList);
            RequestDispatcher view = request.getRequestDispatcher("AddBook.jsp");
            view.forward(request, response);
        
    }
        
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
