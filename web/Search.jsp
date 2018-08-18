<%-- 
    Document   : Search
    Created on : Aug 1, 2018, 3:55:45 PM
    Author     : Gobykrishanth
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>LIBRARY MANAGEMENT SYSTEM </title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Invest project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="Contents/css/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="Contents/css/bootstrap.min.css">
        <link href="Contents/js/jquery-3.3.1.js">
        <link href="Contents/js/jquery.dataTables.min.js">
        <link href="Contents/js/dataTables.bootstrap.min.js">
        
        <style>
* {box-sizing: border-box;}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;}
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.ropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #00cccc;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color:#ddd;
  color: #000000;}
</style> 




</head>
<body class="container">
<div class="super_container" style="padding-top:100px">
	 
		</div>
		
		<!-- Header -->

		<header class="header">
			<div class="main_menu" style="background-color:#8500ff">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="main_menu_container d-flex flex-row align-items-center justify-content-start">
								<div class="main_menu_content">
									<ul class="main_menu_list">
										<li><a href="">&nbsp;<svg version="1.1" id="Layer_4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve"><g><polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/></g></svg>
										</a></li>
                                                                                <li class="hassubs">
											 <a href="Library.jsp"><i class="fa fa-home" style="font-size:48px;"></i></a>
  <div class="search-container">
                                                                                </li>
										<li class="hassubs">
											<a href="">&nbsp;Add 
											Book
											</a>
											<ul style="background-color: #227cca;">
												<li><a href="AddBook.jsp">AddBook
													<svg version="1.1" id="Layer_6" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
												<li><a href="AddBook.jsp">View Book
													<svg version="1.1" id="Layer_7" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
												<li><a href="AddBook.jsp">Edit
													<svg version="1.1" id="Layer_8" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
												<li><a href="AddBook.jsp">Delete Book
													<svg version="1.1" id="Layer_9" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
											</ul>
										</li>
										<li class="hassubs">
											<a href="">Search Book
												<svg version="1.1" id="Layer_10" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
													 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
													<g>
														<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
													</g>
												</svg>
											</a>
											<ul style="background-color: #227cca;">
												<li><a href="Search.jsp">search book
													<svg version="1.1" id="Layer_11" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
												<li><a href="Search.jsp">view all
													<svg version="1.1" id="Layer_12" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
												
											</ul>
										</li>
										<li class="hassubs">
											<a href="Choice.jsp">Classification
												<svg version="1.1" id="Layer_10" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
													 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
													<g>
														<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
													</g>
												</svg>
											</a>
											<ul>
												<li><a href="MainClasss.jsp">Main Classication
													<svg version="1.1" id="Layer_11" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
												<li><a href="SubClass.jsp">Sub Classification
													<svg version="1.1" id="Layer_12" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														 width="9px" height="5px" viewBox="0 0 9 5" enable-background="new 0 0 9 5" xml:space="preserve">
														<g>
															<polyline class="arrow_d" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="0.022,-0.178 4.5,4.331 9.091,-0.275 	"/>
														</g>
													</svg>
												</a></li>
												
											</ul>
										</li>
									</ul>
								</div>
								<div class="main_menu_contact ml-auto">
									<div class="main_menu_search">
										<div class="main_menu_search_button">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 512 512" enable-background="new 0 0 512 512" width="15px" height="15px">
												<g>
												<path class="mag_path" d="M495,466.2L377.2,348.4c29.2-35.6,46.8-81.2,46.8-130.9C424,103.5,331.5,11,217.5,11C103.4,11,11,103.5,11,217.5   S103.4,424,217.5,424c49.7,0,95.2-17.5,130.8-46.7L466.1,495c8,8,20.9,8,28.9,0C503,487.1,503,474.1,495,466.2z M217.5,382.9   C126.2,382.9,52,308.7,52,217.5S126.2,52,217.5,52C308.7,52,383,126.3,383,217.5S308.7,382.9,217.5,382.9z" fill="#f4f4f8"/>
												</g>
											</svg>
										</div>
										<div class="main_menu_search_content">
											<form action="#">
												<input class="search_input" type="search" placeholder="Keyword" required="required">
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</header>
	
			<div class="row">
				<div class="col">
					  <div class="topnav">
            <a href="Library.jsp"><i class="fa fa-home" ></i></a>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add_new_book" >Add New</button>
  <div class="search-container">
      
        <form action = "SearchController" method = "post">
            <input type="text" name = "sid" id="sid" placeholder="Search"/>
            <button type="submit" name="search"><i class="fa fa-search"></i></button>
             <button type="submit" name="view"><i class="fa fa-eye"></i></button>
    </form>
      
  </div>
</div>
     </div> 
                        </div>
                
                 <div class="row">   
              <div class="col-md-12">
                  <div class="container-fluid">
             <div class="row text-center">
    
<!--        <div class="cliente"> -->
                                     <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h3 id="myModalLabel">Delete</h3>
                        </div>
                        <div class="modal-body">
                            <p></p>
                        </div>
                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                            <button data-dismiss="modal" class="btn red" id="btnYes">Confirm</button>
                        </div>
   </div> 
             </div></div></div></div>

<table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
<thead>
   <tr>
       <th class="hidden-phone">ID</th>
    <th class="hidden-phone">BookID</th>
    <th class="hidden-phone">Title</th>
    <th class="hidden-phone">Author</th>
    <th class="hidden-phone">MainClassification</th>
    <th class="hidden-phone">SubClassification</th>
    <th class="hidden-phone">Year of publish</th>
    <th class="hidden-phone">Last printed Year</th>
    <th class="hidden-phone">ISBN NO</th>
    <th class="hidden-phone">Number of Pages</th>
    <th colspan="3" class="hidden-phone">Action</th>
   </tr>
   

</thead>

    			<tbody>
           
             <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                <td><%=pList.get(4)%></td>
                <td><%=pList.get(5)%></td>
                <td><%=pList.get(6)%></td>
                <td><%=pList.get(7)%></td>
                <td><%=pList.get(8)%></td>
                 <td><%=pList.get(9)%></td>
                
<td><button><a class="btn mini blue-stripe btn-danger" href="{site_url()}admin/editFront/1">Edit</a></button></td>
<td><button><a href="#" class="confirm-delete btn mini red-stripe btn-dark" role="button" data-title="johnny" data-id="1">Delete</a></button></td>
    
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            
            <%            }
            %>
            
            </tbody>
            
</table>
 <div aria-hidden="true"  class="modal fade add_new_bed" id="add_new_book" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
		
        <div class="modal-body">
            <div class="colo">
          <form action="BookController" method="get" name="book_form">
		  
			
			<div class="row">                   
			<div class="col-md-5">
             <div class="form-group">
                <label>BookId</label>
                <input type="text"  name="BookId" required id="BookId" class="form-control" placeholder="Enter the BookId"></input>
              </div>
			  <div class="form-group">
                <label>Title</label>
                <input type="text" name="Title" id="Title" class="form-control" placeholder="Enter the Title"></input>
              </div>
			  <div class="form-group">
                <label>Author</label>
                <input type="text" name="Author" id="Author" class="form-control" placeholder="Enter the Author"></input>
              </div>
                            <div class="form-group">
                <label>Main</label>
                <input type="text" name="MainClass" id="MainClass" class="form-control" placeholder="Enter the Author"></input>
              </div>
                            <div class="form-group">
                <label>Sub</label>
                <input type="text" name="SubClass" id="SubClass" class="form-control" placeholder="Enter the Author"></input>
              </div>
			  
                <label>Main Classification</label>
				<select name='MainClass' id='MainClass' class='form-control' >
				<option> </option>
				
                     
				</select>
                        </div>
              <div class="col-md-5">
			  <div class="form-group">
                <label>Sub Classification</label>
				<select name='SubClass' id='SubClass' class='form-control' >
				<option> </option>
				
				</select>
              
             
                          </div>
			 <div class="form-group">
                <label>Year Of Publish</label>
                <input type="text" name="Yop" id="Yop" class="form-control" placeholder="Enter the year of publish"></input>
              </div>
			  <div class="form-group">
                <label>Last Printed Year</label>
                <input type="text" name="Lpy" id="Lpy" class="form-control" placeholder="Enter the last printed year"></input>
              </div>
			  <div class="form-group">
                <label>ISBN No</label>
                <input type="text" name="ISBNno" id="ISBNno" class="form-control" placeholder="Enter the isbn"></input>
              </div>

              <div id="result"></div>
              <div class="modal-footer">
<!--                  <a href="Library.jsp" target="_blank" type="button" id="back" class="btn btn-primary btn-lg">Back</a>-->
             <button><input type="submit" class="btn btn-primary btn-lg" name="addbook"></button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button><!--
           <button type="button" class="btn btn-primary" id="add_bed" name="add_bed">Add</button>-->
        </div>
         
                          </div>
		</div>
               </form>
        
      </div>
      
    </div>
  </div>
                                
                                

<div class="clearfix"></div>
    <footer>
      <div class="container-fluid">
       
      </div>
    </footer>
  </div>
                        </div>       
            
    
        <script>$(document).ready(function () {
  $('#dtBasicExample').DataTable();
  
});</script>
        <script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
        
    </body>
</html>

