<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Hotel Umai Restaurant</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Hotel Umai Restaurant Website">
    <meta name="author" content="Your Name">

    <!-- Stylesheets -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
</head>
<body>
    <!-- Navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="topNav">
            <div class="container">
                <div class="alignR">
                    <div class="pull-left socialNw"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div id="gototop"></div>
        <!-- Header -->
        <header id="header">
            <div class="row">
                <div class="span4">
                    <h1>
                        <a class="logo" href="index.jsp">
                            <span>Hotel Umai</span>
                            <img src="assets/img/umai.png" alt="Hotel Umai">
                        </a>
                    </h1>
                </div>
                <div class="span4 alignR"></div>
            </div>
        </header>

        <!-- Main Navbar -->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="nav-collapse">
                        <jsp:include page="Header/mainHeader.jsp"></jsp:include>
                    </div>
                </div>
            </div>
        </div>

        <!-- JSP Alert Logic -->
        <%
            if (request.getParameter("delete") != null) {
                out.println("<script>alert('Product removed from Cart!');</script>");
            }
        %>

        <!-- Content Section -->
        <div class="row">
            <div class="span12">
                <div class="well well-small">
                    <div class="row-fluid">
                        <!-- Image Section -->
                        <div class="span5">
                            <div id="myCarousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <a href="#"><img src="Images/AC_Hotel_Valencia.jpg" alt="Hotel Image" style="width: 90%; height: 90%;"></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Description Section -->
                        <div class="span7">
                            <h2>Welcome to Hotel Umai Restaurant</h2>
                            <hr class="soft" />
                            <div class="control-group">
                                <p>
                                    A hotel reservation system is a software application that is implemented by hotels to allow guests to create secure online reservations.
                                    This system can sync with websites and social media platforms like Facebook, providing convenience for guests.
                                </p>
                                <p>
                                    In addition, these systems give hotel operators the ability to manage their products and live availability across multiple online platforms.
                                </p>
                            </div>
                        </div>
                    </div>
                    <hr class="softn clr" />
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="copyright">
        <div class="container">
            <span>Copyright &copy; FlatBud: The Flatmate Searching Website</span>
            <p class="pull-right">
                <a href="https://www.google.com/maps/">
                    <img style="width: 20%;" src="Images/map.jpg" alt="Google Maps">
                </a>
            </p>
        </div>
    </div>

    <!-- Scroll to Top -->
    <a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>

    <!-- Scripts -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>
</body>
</html>
