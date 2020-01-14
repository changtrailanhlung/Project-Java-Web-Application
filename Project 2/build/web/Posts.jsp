<%-- 
    Document   : Posts
    Created on : Nov 2, 2019, 12:11:23 PM
    Author     : lehon
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="databaseCRUD.BlogPostDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Home</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" />
        <!-- Squad theme CSS -->
        <link href="css/style.css" rel="stylesheet">
        <link href="color/default.css" rel="stylesheet">

        <!-- =======================================================
          Theme Name: Squadfree
          Theme URL: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/
          Author: BootstrapMade
          Author URL: https://bootstrapmade.com
        ======================================================= -->
        <script>
            const LoadData = () => {

            }
        </script>
    </head>

    <body onload="LoadData()" id="page-top" data-spy="scroll" data-target=".navbar-custom">



        <!-- Preloader -->
        <div id="preloader">
            <div id="load"></div>
        </div>




        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="#">                        
                        <h1>MY BLOG</h1>                      
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#intro">Home</a></li>

                        <li><a href="#service">Blogs</a></li>
                        <li><a href="#about">Author</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Options <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="login.jsp">Create Blog</a></li>
                                <li><a href="login.jsp">Log in</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Section: intro -->
        <section id="intro" class="intro">

            <div class="slogan">
                <h2>WELCOME TO <span class="text_color">MY BLOG</span> </h2>
            </div>
            <div class="page-scroll">
                <a href="#service" class="btn btn-circle">
                    <i class="fa fa-angle-double-down animated"></i>
                </a>
            </div>
        </section>
        <!-- /Section: intro -->

        <!-- Section: services -->
        <section id="service" class="home-section text-center bg-gray">

            <div class="heading-about">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="wow bounceInDown" data-wow-delay="0.4s">
                                <div class="section-heading">
                                    <h2>MY BLOG</h2>
                                    <i class="fa fa-2x fa-angle-down"></i>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-lg-offset-5">
                        <hr class="marginbot-50">
                    </div>
                </div>
                <div class="row">
                    <%
                        if (session.getAttribute("listPost") != null) {
                            ArrayList<BlogPostDTO> listPost = (ArrayList<BlogPostDTO>) session.getAttribute("listPost");
                            if (listPost.size() > 0)
                                for (BlogPostDTO elem : listPost) {
                                    String id = elem.getID() + "";
                                    String tittle = elem.getTittle();
                                    String topic = elem.getTopic();
                                    String author = elem.getAuthor();
                                    String detail = elem.getDetail();
                                    String create = (elem.getDateCreate()).toString();
                                    String update = (elem.getDateUpdate()).toString();
                    %>
                    <div class="col-md-6">
                        <div class="wow fadeInLeft" data-wow-delay="0.2s">
                            <div class="service-box">
                                
                                <div class="service-desc">
                                    <h3>
                                        <a href="PostDetail.jsp?txtID=<%= id %>">
<!--                                            <div class="badge badge-primary text-wrap" >
                                                CLICK TO VIEW DETAIL
                                            </div>-->
                                            <font color="red">
                                            <%= tittle %>
                                            </font>
<!--                                             <div class="badge badge-primary text-wrap" >
                                                CLICK TO VIEW DETAIL
                                            </div>-->
                                        </a>
                                    </h3>
                                            <b>Author: <i><%= author %></i></b>
                                            <div class="col-2 text-truncate">
                                                <%= detail %></div>   
                                                <p> <b>Create Date: </b> <i><%= create %></i> </p>
                                                <!--<p> <b>Update Date: </b> <i><%= update %></i> </p>--> 
                                    </div>
                            </div>
                        </div>
                    </div>                    
                    <%
                                }

                        }
                    %>

<!--                    <div class="col-md-3">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <img src="img/icons/service-icon-2.png" alt="" />
                                </div>
                                <div class="service-desc">
                                    <h5>Web Design</h5>
                                    <p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <img src="img/icons/service-icon-3.png" alt="" />
                                </div>
                                <div class="service-desc">
                                    <h5>Photography</h5>
                                    <p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wow fadeInRight" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <img src="img/icons/service-icon-4.png" alt="" />
                                </div>
                                <div class="service-desc">
                                    <h5>Cloud System</h5>
                                    <p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
        </section>
        <!-- /Section: services -->


        <!-- Section: about -->
        <section id="about" class="home-section text-center">
            <div class="heading-about">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="wow bounceInDown" data-wow-delay="0.4s">
                                <div class="section-heading">
                                    <h2>AUTHOR</h2>
                                    <i class="fa fa-2x fa-angle-down"></i>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">

                <div class="row">
                    <div class="col-lg-2 col-lg-offset-5">
                        <hr class="marginbot-50">
                    </div>
                </div>
                <div class="row">


                    <div class="col-md-3">
                        <div class="wow bounceInUp" data-wow-delay="0.8s">
                            <div class="team boxed-grey">
                                <div class="inner">
                                    <!--                                    <h5>Jack Briane</h5>
                                                                        <p class="subtitle">jQuery Ninja</p>-->
                                    <div class="avatar"><img src="img/team/3.jpg" alt="" class="img-responsive img-circle" /></div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="wow bounceInUp" data-wow-delay="0.8s">
                            </br></br></br>
                            <p><b>Name: </b>Jack Briane</p>
                            <p><b>Subtitle: </b>jQuery Ninja</p>
                            <p><b>Date of birth: </b>16/07/1967</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Section: about -->




        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="wow shake" data-wow-delay="0.4s">
                            <div class="page-scroll marginbot-30">
                                <a href="#intro" id="totop" class="btn btn-circle">
                                    <i class="fa fa-angle-double-up animated"></i>
                                </a>
                            </div>
                        </div>
                        <p>&copy;SquadFREE. All rights reserved.</p>
                        <div class="credits">
                            <!--
                              All the links in the footer should remain intact. 
                              You can delete the links only if you purchased the pro version.
                              Licensing information: https://bootstrapmade.com/license/
                              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Squadfree
                            -->
                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Core JavaScript Files -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/jquery.scrollTo.js"></script>
        <script src="js/wow.min.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="js/custom.js"></script>
        <script src="contactform/contactform.js"></script>

    </body>

</html>
