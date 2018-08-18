package com.sgc.controller;

import com.sgc.data.BookDao;
import com.sgc.model.AddBook;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/UpdateController"})
public class UpdateController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AddBook book = new AddBook();
        List<AddBook> ViewList = new ArrayList<>();

//        if (request.getParameter("update") != null) {

            book.setBookId(request.getParameter("BookId"));
            book.setAuthor(request.getParameter("Author"));
            book.setTitle(request.getParameter("Title"));
            book.setMainclass(request.getParameter("MainClass"));
            book.setSubclass(request.getParameter("SubClass"));
            book.setYop(request.getParameter("Yop"));
            book.setLpy(request.getParameter("Lpy"));
            book.setIsbnno(request.getParameter("ISBNno"));
            book.setNop(Integer.parseInt(request.getParameter("Nop")));
            BookDao bookdao = new BookDao();
            // String s=request.getParameter(name);

            bookdao.updateBook(book);
            ViewList = bookdao.viewBook();
            request.setAttribute("piList", ViewList);
            request.getRequestDispatcher("AddBook.jsp").forward(request, response);

//        }

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
