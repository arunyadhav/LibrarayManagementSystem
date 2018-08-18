
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


@WebServlet(urlPatterns = {"/AddBookController"})
public class AddBookController extends HttpServlet {
 
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//             List<Integer> date=new ArrayList<>();
////             
//            for(int i=2018;i>1800;i--)
//             {
//           date.add(i);
//           }
                AddBook book=new AddBook();
                 List<AddBook> ViewList = new ArrayList<>();
//               String x = request.getParameter("addbook");
//           if (request.getParameter("addbook")!= null){

//                 String main=request.getParameter("MainClass");
          
          book.setBookId(request.getParameter("BookId"));
          book.setAuthor(request.getParameter("Author"));
          book.setTitle(request.getParameter("Title"));
           book.setMainclass(request.getParameter("MainClass"));
          book.setSubclass(request.getParameter("SubClass"));
          book.setYop(request.getParameter("Yop"));
           book.setLpy(request.getParameter("Lpy"));
          book.setIsbnno(request.getParameter("ISBNno"));
          book.setNop(Integer.parseInt(request.getParameter("Nop")));
          BookDao bookdao=new BookDao();
         // String s=request.getParameter(name);

         bookdao.saveBook(book);
            ViewList = bookdao.viewBook();
            request.setAttribute("piList", ViewList);
//            request.setAttribute("dateList", date);
            request.getRequestDispatcher("AddBook.jsp").forward(request, response);

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
