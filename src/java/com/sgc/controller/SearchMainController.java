/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.data.MainDao;
import com.sgc.model.AddBook;
import com.sgc.model.AddMain;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gobykrishanth
 */
@WebServlet(name = "SearchMainController", urlPatterns = {"/SearchMainController"})
public class SearchMainController extends HttpServlet {

  
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
        ArrayList<AddMain> MainList= new ArrayList<>();
        MainDao maindao = new MainDao();
       
            MainList = maindao.searchMain(sid);
            request.setAttribute("piList", MainList);
            RequestDispatcher view = request.getRequestDispatcher("AddMain.jsp");
            view.forward(request, response);
       
    }
        
        else if (request.getParameter("view")!= null){
         // String sid = request.getParameter("sid");
        ArrayList<AddMain> ViewList= new ArrayList<>();
        MainDao maindao = new MainDao();
        
            ViewList = maindao.viewMain();
            request.setAttribute("piList", ViewList);
            RequestDispatcher view = request.getRequestDispatcher("AddMain.jsp");
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
