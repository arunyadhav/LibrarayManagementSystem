<%@ page language="java" import="java.util.*;"%>
<%@ page language="java" import="java.sql.*"%>
<head>
</head>
<body>
    <form name="editform" method="post" action="Addbook.jsp">
        <%! String BookId = "";
            String Title = "";
            String Author = "";
            String MainClass = "";
            String SubClass = "";
            String Yop = "";
            String Lpy = "";
            String ISBNno = "";
			 String Nop = "";
        %>
        <br><br><br>
        <table align="center" width="300px" style="background-color:#EDF6EA;border:1px solid #000000;">
            <div class="row">                   
			<div class="col-md-5">
             <div class="form-group">
                <label>BookId</label>
                <input type="text"  name="BookId" required id="BookId" class="form-control" value="<%=BookId%>"></input>
              </div>
			  <div class="form-group">
                <label>Title</label>
                <input type="text" name="Title" id="Title" class="form-control" value="<%=Title%>"></input>
              </div>
			  <div class="form-group">
                <label>Author</label>
                <input type="text" name="Author" id="Author" class="form-control" value="<%=Author%>"></input>
              </div>
                            <div class="form-group">
                <label>Main</label>
                <input type="text" name="MainClass" id="MainClass" class="form-control" value="<%=MainClass%>"></input>
              </div>
                            <div class="form-group">
                <label>Sub</label>
                <input type="text" name="SubClass" id="SubClass" class="form-control" value="<%=SubClass%>"></input>
              </div>
                        </div>
			  
            <div class="col-md-5">
			 
			 <div class="form-group">
                <label>Year Of Publish</label>
                <input type="text" name="Yop" id="Yop" class="form-control" value="<%=Yop%>"></input>
              </div>
			  <div class="form-group">
                <label>Last Printed Year</label>
                <input type="text" name="Lpy" id="Lpy" class="form-control" value="<%=Lpy%>"></input>
              </div>
			  <div class="form-group">
                <label>ISBN No</label>
                <input type="text" name="ISBNno" id="ISBNno" class="form-control" value="<%=ISBNno%>"></input>
              </div>
                    <div class="form-group">
                <label>Number Of Pages</label>
                <input type="text" name="Nop" id="Nop" class="form-control" value="<%=Nop%>"></input>
                    </div>
					<tr>
                <td></td>
                <td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
            </tr>
            <tr><td colspan=2 align="center" height="10px"></td></tr>
        </table>
        <%
                    BookId = request.getParameter("BookId");
                    Title = request.getParameter("Title");
                    Author = request.getParameter("Author");
                    MainClass = request.getParameter("MainClass");
                    SubClass = request.getParameter("SubClass");
                    Yop = request.getParameter("Yop");
                    Lpy = request.getParameter("Lpy");
                    ISBNno = request.getParameter("ISBNno");
					Nop = request.getParameter("Nop");
                    Statement stmt;
                    Connection conn = null;
                    String url = "jdbc:mysql://localhost:3306/";
                        String dbName = "jlib";
                        String driver = "com.mysql.cj.jdbc.Driver";
                        String userName = "root";
                        String password = "";
                    out.println(request.getRequestURI());
                    if (BookId != null && Title != null && Author != null && MainClass != null && SubClass != null && Yop != null && Lpy != null && ISBNno != null && Nop != null) {
                        if (BookId != "" && Title != "" && Author != "" && MainClass != "" && SubClass != "" && Yop != "" && Lpy != "" && ISBNno != "" && Nop != "") {
                            try {
                                Class.forName(driver).newInstance();
                                conn = DriverManager.getConnection(url + dbName, userName, password);
                                System.out.println("Connected to the database");
                                //ArrayList al = null;
                                // ArrayList userList = new ArrayList();
                                String query = "UPDATE books SET BookId= "+BookId+",Title=" + Title + ",Author=" + Author + ",MainClass=" + MainClass+",SubClass=" + SubClass + ",Yop=" + Yop + ",Lpy=" + Lpy + ",ISBNno=" + ISBNno + ",=" + ISBNno + "Nop=" + Nop +"";
                        stmt = conn.createStatement();
                        int i = stmt.executeUpdate(query);
                        System.out.println("query" + query);
                                if (i > 0) {
                                    response.sendRedirect("AddBook.jsp");
                                }
                                conn.close();
                                System.out.println("Disconnected from database");
        %>
        <br>
        <TABLE style="background-color: #E3E4FA;"
               WIDTH="30%" border="1">
            <tr><th>Data Modified successfully
                    in database.</th></tr>
        </TABLE>
        <%
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
        %>
    </form>
</body>
</html>