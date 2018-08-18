package com.sgc.controller;

import com.sgc.data.MainDao;
import com.sgc.model.AddMain;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EditMainController", urlPatterns = {"/EditMainController"})
public class EditMainController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //if (request.getParameter("edit") != null) {
        String MainClassId = request.getParameter("edit");

        ArrayList<AddMain> UpdateList = new ArrayList<>();
        MainDao maindao = new MainDao();

        UpdateList = maindao.editMain(MainClassId);
        request.setAttribute("uiList", UpdateList);
        RequestDispatcher view = request.getRequestDispatcher("AddMain.jsp");
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
