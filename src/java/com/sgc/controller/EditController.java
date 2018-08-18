
package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.data.MainDao;
import com.sgc.model.AddBook;
import com.sgc.model.AddMain;
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

@WebServlet(urlPatterns = {"/EditController"})
public class EditController extends HttpServlet {

    private ArrayList<AddMain> mainList;

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          System.out.println("<h1>Hi</h1>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
//         List<AddMain> mainList = new ArrayList<>();
//            MainDao maindao = new MainDao();
//
//            mainList = maindao.viewMainBySub();
//
//            request.setAttribute("miList", mainList);
             
        String BookId=request.getParameter("edit");
          
        ArrayList<AddBook> UpdateList= new ArrayList<>();
        BookDao bookdao = new BookDao();
       
            UpdateList = bookdao.editBook(BookId);
            request.setAttribute("uiList", UpdateList);
          
            request.getRequestDispatcher("./AddBook.jsp").forward(request, response);
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
