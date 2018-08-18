
package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.data.MainDao;
import com.sgc.model.AddBook;
import com.sgc.model.AddMain;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ViewBookController", urlPatterns = {"/ViewBookController"})
public class ViewBookController extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ViewBookController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewBookController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

        List<AddBook> bookList = new ArrayList<>();
        List<AddMain> mainList = new ArrayList<>();
        
        BookDao bookdao = new BookDao();
        MainDao maindao = new MainDao();
        
        bookList = bookdao.viewBook();
        mainList = maindao.viewMain();
        
        request.setAttribute("piList", bookList);
        request.setAttribute("mainClassList", mainList);
        
        
            RequestDispatcher view = request.getRequestDispatcher("AddBook.jsp");
            view.forward(request, response);
        

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
