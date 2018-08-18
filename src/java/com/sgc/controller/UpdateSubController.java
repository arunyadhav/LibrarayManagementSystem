
package com.sgc.controller;

import com.sgc.data.SubDao;
import com.sgc.model.AddSub;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UpdateSubController", urlPatterns = {"/UpdateSubController"})
public class UpdateSubController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         AddSub sub= new AddSub();
        ArrayList<AddSub> ViewList = new ArrayList<>();

//        if (request.getParameter("update") != null) {
        sub.setSubClassId(request.getParameter("SubClassId"));
        sub.setSubClass(request.getParameter("SubClass"));
      sub.setMainClassId(request.getParameter("MainClassId"));
      sub.setMainClass(request.getParameter("MainClass"));
       
        SubDao subdao = new SubDao();
        // String s=request.getParameter(name);

        subdao.updateSub(sub);
        ViewList = subdao.viewSub();
        request.setAttribute("piList", ViewList);
        request.getRequestDispatcher("AddSub.jsp").forward(request, response);
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
