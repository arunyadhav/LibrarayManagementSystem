
package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.data.MainDao;
import com.sgc.data.SubDao;
import com.sgc.model.AddBook;
import com.sgc.model.AddMain;
import com.sgc.model.AddSub;
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


@WebServlet(name = "ViewSubController", urlPatterns = {"/ViewSubController"})
public class ViewSubController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         List<AddSub> bookList = new ArrayList<>();
       // List<AddMain> mainList = new ArrayList<>();
        
        SubDao subdao = new SubDao();
        MainDao maindao = new MainDao();
        
        bookList = subdao.viewSub();
        
        
        request.setAttribute("piList", bookList);
            RequestDispatcher view = request.getRequestDispatcher("AddSub.jsp");
            view.forward(request, response);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
