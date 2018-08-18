
package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.data.MainDao;
import com.sgc.model.AddBook;
import com.sgc.model.AddMain;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "DeleteMainController", urlPatterns = {"/DeleteMainController"})
public class DeleteMainController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      List<AddMain> ViewList = new ArrayList<>();
//        if (request.getParameter("delete") != null) {
            String MainClassId = request.getParameter("delete");
            MainDao maindao = new MainDao();
            maindao.deleteMain(MainClassId);
            ViewList = maindao.viewMain();
            request.setAttribute("piList", ViewList);
            request.getRequestDispatcher("AddMain.jsp").forward(request, response);

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
