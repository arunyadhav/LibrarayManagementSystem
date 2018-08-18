package com.sgc.controller;

import com.sgc.data.MainDao;
import com.sgc.model.AddMain;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateMainController", urlPatterns = {"/UpdateMainController"})
public class UpdateMainController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AddMain main = new AddMain();
        ArrayList<AddMain> ViewList = new ArrayList<>();

//        if (request.getParameter("update") != null) {
        main.setMainClassificationId(request.getParameter("MainClassId"));
        main.setMainClassification(request.getParameter("MainClass"));
       
        MainDao maindao = new MainDao();
        // String s=request.getParameter(name);

        maindao.updateMain(main);
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
