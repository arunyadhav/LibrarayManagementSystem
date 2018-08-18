package com.sgc.controller;

import com.sgc.data.SubDao;
import com.sgc.model.AddSub;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteSubController", urlPatterns = {"/DeleteSubController"})
public class DeleteSubController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<AddSub> ViewList = new ArrayList<>();
//        if (request.getParameter("delete") != null) {
        String SubClassId = request.getParameter("delete");
        SubDao subdao = new SubDao();
        subdao.deleteSub(SubClassId);
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
