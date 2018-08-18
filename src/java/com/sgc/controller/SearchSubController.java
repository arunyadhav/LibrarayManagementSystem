
package com.sgc.controller;

import com.sgc.data.SubDao;
import com.sgc.model.AddSub;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SearchSubController", urlPatterns = {"/SearchSubController"})
public class SearchSubController extends HttpServlet {

  
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
        ArrayList<AddSub> SubList= new ArrayList<>();
        SubDao subdao = new SubDao();
       
            SubList = subdao.searchSub(sid);
            request.setAttribute("piList", SubList);
            RequestDispatcher view = request.getRequestDispatcher("AddSub.jsp");
            view.forward(request, response);
       
    }
        
        else if (request.getParameter("view")!= null){
         // String sid = request.getParameter("sid");
        ArrayList<AddSub> ViewList= new ArrayList<>();
        SubDao subdao = new SubDao();
        
            ViewList = subdao.viewSub();
            request.setAttribute("piList", ViewList);
            RequestDispatcher view = request.getRequestDispatcher("AddSub.jsp");
            view.forward(request, response);
        
    }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
