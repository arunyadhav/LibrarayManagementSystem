
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



        <style>
            .main_menu_container {
                height: 45px;
                color: #999999;
            }
            .main_menu_list
             {
                /*height: 45px;*/
                
            }
       
          /*------hover*/  
            

.hovereffect img {
display:block;
position:relative;
-webkit-transition:all .4s linear;
transition:all .4s linear;
}

.hovereffect h2 {
text-transform:uppercase;
color:#fff;
text-align:center;
position:relative;
font-size:17px;
background:rgba(0,0,0,0.6);
-webkit-transform:translatey(-100px);
-ms-transform:translatey(-100px);
transform:translatey(-100px);
-webkit-transition:all .2s ease-in-out;
transition:all .2s ease-in-out;
padding:10px;
}

.hovereffect a.info {
text-decoration:none;
display:inline-block;
text-transform:uppercase;
color:#fff;
border:1px solid #fff;
background-color:transparent;
opacity:0;
filter:alpha(opacity=0);
-webkit-transition:all .2s ease-in-out;
transition:all .2s ease-in-out;
margin:50px 0 0;
padding:7px 14px;
}

.hovereffect a.info:hover {
box-shadow:0 0 5px #fff;
}
.main_menu_list li a:hover {
    color: #adacab;
}
.hovereffect:hover img {
-ms-transform:scale(1.2);
-webkit-transform:scale(1.2);
transform:scale(1.2);
}

.hovereffect:hover .overlay {
opacity:1;
filter:alpha(opacity=100);
}

.hovereffect:hover h2,.hovereffect:hover a.info {
opacity:1;
filter:alpha(opacity=100);
-ms-transform:translatey(0);
-webkit-transform:translatey(0);
transform:translatey(0);
}

.hovereffect:hover a.info {
-webkit-transition-delay:.2s;
transition-delay:.2s;
}

/*---end*/
        </style>


    </head>
    <body class="container" style="background-color:#fff;">

        <div class="super_container" style="background-color: #9c5a69;">

            <!-- Home -->

            <div class="home" >
                <div class="home_slider_container">

                    <!-- Home Slider -->

                    <div class="owl-carousel owl-theme home_slider">

                        <!-- Slider Item -->
                        <div class="info" style="background-color:#fff">
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <div class="section_title_container text-center">
                                            <div class="section_subtitle"></div>
                                            <div class="section_title">Library Management System</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row info_row">
         
                                    <!-- Info Item -->
                                    <div class="col-lg-6 info_col">
                                        <div class="info_item text-center">
                                            <div class="info_image"><a href="ViewBookController"><img src="icon/search.png"  alt=""></a></div>
                                            <div class="info_title">Books</div></a>
                                            <div class="info_text">

                                            </div>
                                        </div>
                                    </div>
                                    <!-- Info Item -->
                                    <div class="col-lg-6 info_col">
                                        <div class="info_item text-center">
                                            <div class="info_image"><a href="Choice.jsp"><img src="icon/book.png" alt=""></a></div>
                                            <div class="info_title">Classification</div>
                                            <div class="info_text">

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>	

                    </div>

                    <div class="home_slider_nav home_slider_prev d-flex flex-column align-items-center justify-content-center"><img src="images/arrow_l.png" alt=""></div>
                    <div class="home_slider_nav home_slider_next d-flex flex-column align-items-center justify-content-center"><img src="images/arrow_r.png" alt=""></div>

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
                                                <li class="hassubs">
                                                    <a href="ViewBookController">&nbsp;Books
                                                    </a>
                                                   <ul style="background-color: #227cca;">
                                                        <li><a href="ViewBookController">AddBook</a></li>
                                                        <li><a href="ViewBookController">Update Book</a></li>
                                                        <li><a href="ViewBookController">Delete Book</a></li>
                                                        <li><a href="ViewBookController">Find Book</a></li>
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