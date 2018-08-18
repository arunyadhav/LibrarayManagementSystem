
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.Statement"%>
<%@page import="javax.persistence.Id"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/jquery.min.js"></script>

        <style>
            .fon{

                font-size: 14px
            }

            .main_menu_container {
                height: 45px;
                color: #999999;
            }
           .modal-header
           {
              height: 45px; 
               
           }
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
            label {
                display: inline-block;
                max-width: 100%;
                margin-bottom: 5px;
                font-weight: 700;
            }


            .form-control {
                display: block;
                width: 100%;
                height: 34px;
                padding: 6px 12px;
                font-size: 14px;
                line-height: 1.42857143;
                color: #555;
                background-color: #fff;
                background-image: none;
                border: 1px solid #ccc;
                border-radius: 4px;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
                -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
                transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            }
            .close {
                float: right;
                font-size: 1.5rem;
                font-weight: 700;
                line-height: 1;
                color: #fbfafcc4;
                text-shadow: 0 1px 0 #fff;
                opacity: .5;
            }


            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
                background-color:#ddd;
                color: #000000;}
            </style> 



            <script>

                function getSubClassificationByMainClassificationid(mainClassificationId) {
                    $.ajax({
                        url: 'GetSubClassificationByMainClasificationIdController?mainClassificationId=' + mainClassificationId,

                        complete: function (response) {
                            var json = JSON.parse(response.responseText);
                            var noOfList = Object.keys(json.SubClassification).length;
                            //alert(json.MainClassification[0].mainClassificationName);

                            option = '<option>Select Sub Classification</option>';

                            for (var x = 0; x < noOfList; x++) {
                                option += '<option value="' + json.SubClassification[x].SubClassificationId + '">' + json.SubClassification[x].SubClassificationName + '</option>';
                            }

                            $('#editSubClass')
                                    .find('option')
                                    .remove()
                                    .end()
                                    .append(option);
                        },

                        error: function () {
                            //$('#id').html('Error receiving the response from json');
                            console.log('Error receiving the response from json');
                        },
                    });
                    return false;
                }

                function getMainClassification() {
                    $.ajax({
                        url: 'GetMainClassificationController',

                        complete: function (response) {
                            var json = JSON.parse(response.responseText);
                            var noOfList = Object.keys(json.MainClassification).length;
                            //alert(json.MainClassification[0].mainClassificationName);

                            option = '<option>Select Main Classification</option>';

                            for (var x = 0; x < noOfList; x++) {
                                option += '<option value="' + json.MainClassification[x].MainClassificationId + '">' + json.MainClassification[x].MainClassificationName + '</option>';
                            }

                            $('#editMainClass')
                                    .find('option')
                                    .remove()
                                    .end()
                                    .append(option);

                            //$("#add_new_book").modal('show');
                        },

                        error: function () {
                            //$('#id').html('Error receiving the response from json');
                            console.log('Error receiving the response from json');
                        },
                    });
                    return false;
                }

                function getBookDetailsById(editBookId) {
                    $.ajax({
                        url: 'GetBookDetailsByBookIdController?bookId=' + editBookId,
                        complete: function (response) {
                            var json = JSON.parse(response.responseText);

                            var bookId = json.books[0].bookId;
                            var bookTitle = json.books[0].Title;
                            var bookAuthor = json.books[0].Author;
                            var bookPublishYear = json.books[0].PublishYear;
                            var bookLastPrintYear = json.books[0].LastPrintYear;
                            var bookISBN = json.books[0].ISBN;
                            var bookNoOfPages = json.books[0].NoOfPages;
                            var bookMainClassificationId = json.books[0].MainClassificationId;
                            var bookSubClassificationId = json.books[0].SubClassificationId;

                            $("#editBookId").val(bookId);
                            $("#editTitle").val(bookTitle);
                            $("#editAuthor").val(bookAuthor);
                            setTimeout(function () {
                                $("#editMainClass").val(bookMainClassificationId);
                            }, 200);

                            getSubClassificationByMainClassificationid(bookMainClassificationId);
                            setTimeout(function () {
                                $("#editSubClass").val(bookSubClassificationId);
                            }, 200);

                            $("#editYop").val(bookPublishYear);
                            $("#editLpy").val(bookLastPrintYear);
                            $("#editISBNno").val(bookISBN);
                            $("#editNop").val(bookNoOfPages);
                        },
                        error: function () {
                            //$('#id').html('Error receiving the response from json');
                            console.log('Error receiving the response from json');
                        },
                    });
                    return false;
                }


                $(document).ready(function () {
                    $("#MainClass").change(function () {
                        var mainClassificationId = this.value;
                        $.ajax({
                            url: 'GetSubClassificationByMainClasificationIdController?mainClassificationId=' + mainClassificationId,

                            complete: function (response) {
                                var json = JSON.parse(response.responseText);
                                var noOfList = Object.keys(json.SubClassification).length;
                                //alert(json.MainClassification[0].mainClassificationName);

                                option = '<option>Select Sub Classification</option>';

                                for (var x = 0; x < noOfList; x++) {
                                    option += '<option value="' + json.SubClassification[x].SubClassificationId + '">' + json.SubClassification[x].SubClassificationName + '</option>';
                                }

                                $('#SubClass')
                                        .find('option')
                                        .remove()
                                        .end()
                                        .append(option);
                            },

                            error: function () {
                                //$('#id').html('Error receiving the response from json');
                                console.log('Error receiving the response from json');
                            },
                        });
                        return false;
                    });

                    $("#btnAddBook").click(function () {
                        $.ajax({
                            url: 'GetMainClassificationController',

                            complete: function (response) {
                                var json = JSON.parse(response.responseText);
                                var noOfList = Object.keys(json.MainClassification).length;
                                //alert(json.MainClassification[0].mainClassificationName);

                                option = '<option>Select Main Classification</option>';

                                for (var x = 0; x < noOfList; x++) {
                                    option += '<option value="' + json.MainClassification[x].MainClassificationId + '">' + json.MainClassification[x].MainClassificationName + '</option>';
                                }

                                $('#MainClass')
                                        .find('option')
                                        .remove()
                                        .end()
                                        .append(option);

                                $("#add_new_book").modal('show');
                            },

                            error: function () {
                                //$('#id').html('Error receiving the response from json');
                                console.log('Error receiving the response from json');
                            },
                        });
                        return false;
                    });
//
//                    $(document).on('click', 'i[id^="btnEditBook"]', function () {
//                        alert(this.value);
//                        getMainClassification();
////                        getSubClassificationByMainClassificationid();
//                    });

                    $(document).on('click', 'button[id^="btnEditBook"]', function () {
                        //alert($(this).attr('value'));
                        var editBookId = $(this).attr('value');
                        //alert(editBookId);
                        getMainClassification();
                        getBookDetailsById(editBookId);
//                        getEditBookMainClassification();
//                        loadAllSubClassification();
//                        loadEditBookPublishYear();
//                        getBookDetailsById(editBookId);
                    });

                    $("#editMainClass").change(function () {
                        getSubClassificationByMainClassificationid(this.value);
                    });
                });



            </script>

        </head>
        <body class="container"  style="background-color: #cccce0;">
        <div class="super_container" style="padding-top:100px">

        </div>




        <!-- Header -->

        <header class="header">
            <div class="main_menu" style="background-color:#000000">
                <div class="container" >
                    <div class="row">
                        <div class="col">
                            <div class="main_menu_container d-flex flex-row align-items-center justify-content-start">
                                <div class="main_menu_content" >
                                    <ul class="main_menu_list">
                                        <li><a href="">&nbsp;</a></li>
                                        <li class="hassubs" style="">
                                            <a href="index.jsp"><i class="fa fa-home" style="font-size: xx-large;padding-top: 50px;"></i></a>
                                        </li>
                                        <li class="hassubs">
                                            <a href="ViewBookController">&nbsp;Books
                                            </a>
                                            <ul style="background-color: #227cca;">
                                                <li><a href="AddBook.jsp">AddBook</a></li>
                                                <li><a href="AddBook.jsp">Update Book</a></li>
                                                <li><a href="AddBook.jsp">Delete Book</a></li>
                                                <li><a href="AddBook.jsp">Find Book</a></li>
                                            </ul>
                                        </li>

                                        <li class="hassubs">
                                            <a href="Choice.jsp">Classification</a>
                                            <ul style="background-color: #227cca;">
                                                <li><a href="MainClass.jsp">Main Classication</a></li>
                                                <li><a href="SubClass.jsp">Sub Classification</a></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!--Search Field-->
        <div class="row">
            <div class="col">
                <div class="topnav" style="border-radius:10px;background-color: #1c3dd0e6;">

                    <a href="index.jsp"><i class="fa fa-home" ></i></a>

                    <button type="button" class="btn btn-primary" id="btnAddBook"  data-toggle="modal" style="font-size:13px;margin-top: 12px;" data-target="#add_new_book" >Add New</button>

                    <div class="search-container">
                        <form action = "SearchController" method = "get">
                            <input type="text" name = "sid" id="sid" placeholder="Search" style="width: 250px; font-size: 13px; border-radius: 5px; height: 35px;"/>
                            <button type="submit" name="view" ><i class="fa fa-eye"></i></button>
                            <button type="submit" name="search" style="margin-left: 10px;"><i class="fa fa-search"></i></button>&nbsp; 
                            


                        </form>

                    </div>
                </div>
            </div> 
        </div>

       
        <br>
        <!--book details table-->
        <form >
            <table class="table table-hover"  cellspacing="0" width="100%" style="background: #eaebf1;border-radius: 10px;">
                <thead>
                    <tr style="font-size: 14px;">
                        <th class="hidden-phone">BookID</th>
                        <th class="hidden-phone">Title</th>
                        <th class="hidden-phone">Author</th>
                        <th class="hidden-phone">MainClassification</th>
                        <th class="hidden-phone">SubClassification</th>
                        <th class="hidden-phone">PublishYear</th>
                        <th class="hidden-phone">LastPrintedYear</th>
                        <th class="hidden-phone">ISBNNO</th>
                        <th class="hidden-phone">#Pages</th>
                        <th colspan="3" class="hidden-phone">Action</th>
                    </tr>


                </thead>

                <tbody style="font-size: 13px;">


                    <c:forEach items="${piList}" var="piList">

                        <tr>
                            <td>${piList.getBookId()}</td>
                            <td>${piList.getTitle()}</td>
                            <td>${piList.getAuthor()}</td>
                            <td>${piList.getMainclass()}</td>
                            <td>${piList.getSubclass()}</td>
                            <td>${piList.getYop()}</td>
                            <td>${piList.getLpy()}</td>
                            <td>${piList.getIsbnno()}</td>
                            <td>${piList.getNop()}</td>

                            <td><button type="button" id="btnEditBook${piList.getBookId()}" data-target="#editForm" class="btn btn-info btn-sm btn-success" data-toggle="modal" style="background-color:#28a745;" name="edit" value="${piList.getBookId()}">Edit</button>
                                <a  href="DeleteController?delete=${piList.getBookId()}" onclick="return confirm('Are you sure you want to delete this item?');"><button type="button" id="btndeleBook" class="btn btn-info btn-sm btn-danger" data-toggle="modal"  name="Delete" value="${piList.getBookId()}">Delete</button></a></td>


                        </tr>
                    </c:forEach>


                </tbody>

            </table></form>
        <!--------->



        <!------------>

        <div class="contentform col-md-12" style="padding-left:100px">				



            <form action="UpdateController" method="get">

                <c:forEach items="${uiList}" var="uiList">


                    <div class="row">                   
                        <div class="col-md-5">				
                            <div class="form-group">
                                <label for="name" class="cols-sm-10 control-label">Book Id</label>
                                <div class="cols-sm-20">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-book" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" name="BookId" id="BookId"  value="${uiList.getBookId()}"/>
                                    </div>
                                </div>
                            </div>



                            <div class="form-group">
                                <label for="name" class="cols-sm-10 control-label">Title</label>
                                <div class="cols-sm-20">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-header" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" name="Title" id="Title"  value="${uiList.getTitle()}"/>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="name" class="cols-sm-10 control-label">Author</label>
                                <div class="cols-sm-20">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" name="Author" id="Author"  value="${uiList.getAuthor()}"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name" class="cols-sm-10 control-label">MainClassification</label>
                                <div class="cols-sm-20">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-chevron-circle-down" aria-hidden="true"></i></span>
                                        <select class="form-control"  name="SubClass" id="SubClass">

                                        </select>
                                    </div>
                                </div>


                            </div>

                            <div class="form-group">
                                <label for="name" class="cols-sm-2 control-label">SubClassification</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-chevron-circle-up" aria-hidden="true"></i></span>
                                            <c:forEach items="${miList}" var="miList">
                                            <select class="form-control"  name="MainClass" id="MainClass">
                                                <option>${miList.getMainClass()}</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>


                        </div>
                        <div class="col-md-5">		
                            <div class="form-group">
                                <label for="name" class="cols-sm-2 control-label">Year Of Publish</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                        
                                        <input type="text" class="form-control" name="Yop" id="Yop"  value="${uiList.getYop()}"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name" class="cols-sm-2 control-label">Last Printed Year</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar-check-o" aria-hidden="true"></i></span>
                                        <input type="date" class="form-control" name="Lpy" id="Lpy" value="${uiList.getLpy()}"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="name" class="cols-sm-2 control-label">ISBN No</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-newspaper-o" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="ISBNno" id="ISBNno"  value="${uiList.getIsbnno()}"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" >
                                    <label for="name" class="cols-sm-2 control-label">No Of Pages</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-times-circle" aria-hidden="true"></i></span>
                                            <input type="number" class="form-control" name="Nop" id="Nop"  value="${uiList.getNop()}" required/>
                                        </div>
                                    </div>
                                </div>
                                <div id="result"></div>
                                <div class="modal-footer">

                                    <button><input type="submit" class="btn btn-primary" name="update"></button>
                                    <a href="AddBook.jsp"><button type="button"  class="btn btn-default" data-dismiss="modal">Close</button></a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>




    <!---Add Book Form-->
    <div aria-hidden="true"  class="modal fade add_new_book" id="add_new_book" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header"  style="background-color:#1c3dd0e6"><h5 style="margin-left: 180px;color:#ffffff;">AddBook</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="container col-md-12">
                    <div class="modal-body" style="background-color: #ffff">
                        <div class="colo" style="font-size: 15px;">

                            <form action="AddBookController" method="get" name="book_form">


                                <div class="row">                   
                                    <div class="col-md-6" style="font-size: 13px;">

                                        <div class="form-group" style="font-size: 13px;">
                                            <label>Book ID</label>
                                            <input type="text" name="BookId" id="BookId" class="form-control" placeholder="Enter the BookId" required></input>
                                        </div>
                                        <div class="form-group" style="font-size: 13px;">
                                            <label>Title</label>
                                            <input type="text" name="Title" id="Title" class="form-control" placeholder="Enter the Title" required></input>
                                        </div>
                                        <div class="form-group" style="font-size: 13px;">
                                            <label>Author</label>
                                            <input type="text" name="Author" id="Author" class="form-control" placeholder="Enter the Author" required></input>
                                        </div>
                                        <div class="form-group" style="font-size: 13px;">
                                            <label>Main</label>
                                            
                                            <select class="form-control"  name="MainClass" id="MainClass">

                                            </select>
                                        </div>


                                        <div class="form-group" style="font-size: 13px;">
                                            <label>Sub</label>
                                            <!--<input type="text" name="SubClass" id="SubClass" class="form-control" placeholder="Enter the Sub"></input>-->
                                            <select class="form-control" name="SubClass" id="SubClass" >
                                                <option></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6" >
                                        <div class="fon">
                                            <div class="form-group" style="font-size: 13px;">
                                                <label>Year Of Publish</label>
                                 <input type="text" name="Yop" id="Yop" class="form-control" placeholder="Enter the year of publish" required></input>                        
                                            </div>
                                            <div class="form-group" style="font-size: 13px;">
                                                <label>Last Printed Year</label>
                                                <input type="text" name="Lpy" id="Lpy" class="form-control" placeholder="Enter the last printed year" required></input>
                                            </div>
                                            <div class="form-group" style="font-size: 13px;">
                                                <label>ISBN No</label>
                                                <input type="text" name="ISBNno" id="ISBNno" class="form-control" placeholder="Enter the isbn"></input>
                                            </div>
                                            <div class="form-group" style="font-size: 13px;">
                                                <label>Number Of Pages</label>
                                                <input type="number" name="Nop" id="Nop" class="form-control" placeholder="Enter the pages" required></input>
                                            </div>

                                            <div id="result"></div>
                                            <div class="modal-footer" style="font-size: 13px;">

                                                <button type="submit" name="addbook" class="btn btn-primary">Save</button>
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>                                                     <!---------------->
<!---------->



<div aria-hidden="true"  class="modal fade editForm" id="editForm" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" style="background-color:#1c3dd0e6"><h5 style="margin-left: 180px;color:#ffffff;">Edit Book</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="container col-md-12">
                <div class="modal-body" style="background-color: #ffff">
                    <div class="colo" style="font-size: 15px;">
                        <form action="UpdateController" method="get" name="book_form">


                            <div class="row">                   
                                <div class="col-md-6">

                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Book ID</label>
                                        <input type="text" name="BookId" id="editBookId" class="form-control" placeholder="Enter the BookId" readonly></input>
                                    </div>
                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Title</label>
                                        <input type="text" name="Title" id="editTitle" class="form-control" placeholder="Enter the Title"></input>
                                    </div>
                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Author</label>
                                        <input type="text" name="Author" id="editAuthor" class="form-control" placeholder="Enter the Author"></input>
                                    </div>
                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Main</label>
                                        <!--<input type="text" name="MainClass" id="MainClass" class="form-control" placeholder="Enter the Mian"></input>-->
                                        <select class="form-control"  name="MainClass" id="editMainClass">

                                        </select>
                                    </div>


                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Sub</label>
                                        <!--<input type="text" name="SubClass" id="SubClass" class="form-control" placeholder="Enter the Sub"></input>-->
                                        <select class="form-control" name="SubClass" id="editSubClass" >
                                            <option></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">

                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Year Of Publish</label>
                                        <input type="text" name="Yop" id="editYop" class="form-control" placeholder="Enter the year of publish"></input>
                                    </div>
                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Last Printed Year</label>
                                        <input type="text" name="Lpy" id="editLpy" class="form-control" placeholder="Enter the last printed year"></input>
                                    </div>
                                    <div class="form-group" style="font-size: 13px;">
                                        <label>ISBN No</label>
                                        <input type="text" name="ISBNno" id="editISBNno" class="form-control" placeholder="Enter the isbn"></input>
                                    </div>
                                    <div class="form-group" style="font-size: 13px;">
                                        <label>Number Of Pages</label>
                                        <input type="text" name="Nop" id="editNop" class="form-control" placeholder="Enter the pages"></input>
                                    </div>

                                    <div id="result"></div>
                                    <div class="modal-footer" style="font-size: 13px;">

                                        <button type="submit" name="addbook"  class="btn btn-primary" >Save</button>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                    </div>

                                </div>
                            </div>
                        </form>


                    </div>
                </div>

            </div>
        </div>
    </div>
</div>                                                     <!---------------->



<!--------->

<div class="clearfix"></div>
<footer>
    <div class="container-fluid">

    </div>
</footer>
</div>
</div>       


<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/custom.js"></script>


</body>
</html>

