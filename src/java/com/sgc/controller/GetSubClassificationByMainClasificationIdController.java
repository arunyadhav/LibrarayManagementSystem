
package com.sgc.controller;

import com.sgc.data.SubDao;
import com.sgc.model.AddSub;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "GetSubClassificationByMainClasificationIdController", urlPatterns = {"/GetSubClassificationByMainClasificationIdController"})
public class GetSubClassificationByMainClasificationIdController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

        String mainClassificationId = request.getParameter("mainClassificationId");
        SubDao subdao = new SubDao();

        List<AddSub> subClassificationList = subdao.viewSubByMainId(mainClassificationId);

        response.setContentType("application/json");
        PrintWriter writer = response.getWriter();

        JsonObjectBuilder rootBuilder = Json.createObjectBuilder();
        JsonArrayBuilder arrayBuilder = Json.createArrayBuilder();
        JsonObject subClassificationJson = null;

        for (AddSub subClassification : subClassificationList) {
            JsonObjectBuilder subClassificationBuilder = Json.createObjectBuilder();

            subClassificationJson = subClassificationBuilder
                    .add("SubClassificationId", subClassification.getSubClassId())
                    .add("SubClassificationName", subClassification.getSubClass())
                    .build();

            arrayBuilder.add(subClassificationJson);
        }
        JsonObject root = rootBuilder.add("SubClassification", arrayBuilder).build();
        writer.print(root);
        writer.flush();
        writer.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
