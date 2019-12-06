<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Metas -->
<title>Fresh Cuts Appts</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Appointment form JS showing appointment is scheduled-->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
<script src="appointments.js"></script>

</head>

<body class="barber_version" ng-controller="AppointmentController">

    <!-- LOADER -->
    <div id="preloader">
        <div class="cube-wrapper">
            <div class="cube-folding">
                <span class="leaf1"></span>
                <span class="leaf2"></span>
                <span class="leaf3"></span>
                <span class="leaf4"></span>
            </div>
            <span class="loading" data-name="Loading">Fresh Cuts Loading</span>
        </div>
    </div><!-- end loader -->
    <!-- END LOADER -->

    <div id="wrapper">

        <!-- Sidebar-wrapper -->
        <div id="sidebar-wrapper">
            <div class="side-top">
                <div class="logo-sidebar">
                    <a href="index.jsp"><img src="images/logos/logo.png" alt="image"></a>
                </div>
                <ul class="sidebar-nav">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="barbers.jsp">Our Barbers</a></li>
                    <li><a class="active" href="appointment.jsp">Appointments</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="services.jsp">Our Services</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>
        </div>
        <!-- End Sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <a href="#menu-toggle" class="menuopener" id="menu-toggle"><i class="fa fa-bars"></i></a>

            <div class="all-page-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="title title-1 text-center">
                                <div class="title--heading">
                                    <h1>Appointments</h1>
                                </div>
                                <div class="clearfix"></div>
                                <ol class="breadcrumb">
                                    <li><a href="index-3.jsp">Home</a></li>
                                    <li class="active">Appointments</li>
                                </ol>
                                <div class="much">
                                    <img src="uploads/mustache.png" alt="" />
                                </div>
                            </div>
                            <!-- .title end -->
                        </div>
                    </div>
                </div>
            </div><!-- end all-page-bar -->

            <section class="section nopad cac text-center">
                <a href="#">
                    <h3>Interested in scheduling an appointment with one of our barbers? Schedule an appointment using
                        the form below!</h3>
                </a>
            </section>

            <div id="appointment" class="section wb">
                <div class="container-fluid">
                    <div class="section-title row text-center">
                        <div class="col-md-8 col-md-offset-2">
                            <small>CHANGE YOUR HAIRSTYLE</small>
                            <h3>Book Now</h3>
                            <hr class="grd1">
                        </div>
                    </div><!-- end title -->

                    <!-- Shows Appointment scheduled -->
                    <div>
                        <h3>Appointment Is Now Scheduled!</h3>
                        <br><br>
                        <div>
							<h3>Would You Like To See Your Appointment Information?</h3>
							<br>
							<form method="post" action="ShowApp.do"> 
								<input type="submit" value="Get Information">
							</form>
						</div>
                        
                        <br>
                        <div>
							<h3>Would You Like To Edit Your Appointment?</h3>
							<br>
							<h4>Type Your Email:</h4>
							<form method="post" action="EditApp.do">
								Enter ID You Would Like to Search: <br> 
								<input type="text" name="femail" size="30"> <br> <br> 
								<input type="submit" value="Get Your Appointment">
							</form>
						</div>

					</div>

                </div><!-- end container -->
            </div><!-- end section -->

            <div id="testimonials" class="parallax section db parallax-off"
                style="background-image:url('uploads/parallax_20.jpg');">
                <div class="container-fluid">
                    <div class="section-title row text-center">
                        <div class="col-md-8 col-md-offset-2">
                            <small>OUR TESTIMONIALS</small>
                            <h3>TESTIMONIALS FROM PREVIOUS USERS</h3>
                        </div>
                    </div><!-- end title -->

                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="testi-carousel owl-carousel owl-theme">
                                <div class="testimonial clearfix">
                                    <div class="desc">
                                        <h3><i class="fa fa-quote-left"></i> Love My New Hairstyle!</h3>
                                        <p class="lead">Attended me quickly and was able to get in and get out quickly
                                            and looking fresh!</p>
                                    </div>
                                    <div class="testi-meta">
                                        <img src="uploads/testi_01.png" alt="" class="img-responsive alignright">
                                        <h4>Anonymous <small>- Fresh Cuts User</small></h4>
                                    </div>
                                    <!-- end testi-meta -->
                                </div>
                                <!-- end testimonial -->
                                <div class="testimonial clearfix">
                                    <div class="desc">
                                        <h3><i class="fa fa-quote-left"></i> Great Service!</h3>
                                        <p class="lead">The barber cut my hair even better than what I expected!
                                            I am looking to come again and schedule my appointment online!
                                        </p>
                                    </div>
                                    <div class="testi-meta">
                                        <img src="uploads/testi_02.png" alt="" class="img-responsive alignright">
                                        <h4>John <small>- Fresh Cuts User</small></h4>
                                    </div>
                                    <!-- end testi-meta -->
                                </div>
                                <!-- end testimonial -->
                                <div class="testimonial clearfix">
                                    <div class="desc">
                                        <h3><i class="fa fa-quote-left"></i> Great & Talented Team!</h3>
                                        <p class="lead">The master-builder of human happines no one rejects, dislikes
                                            avoids pleasure itself, because it is very pursue pleasure. </p>
                                    </div>
                                    <div class="testi-meta">
                                        <img src="uploads/testi_03.png" alt="" class="img-responsive alignright">
                                        <h4>Venanda Mercy <small>- Newyork City</small></h4>
                                    </div>
                                    <!-- end testi-meta -->
                                </div>
                                <!-- end testimonial -->
                                <div class="testimonial clearfix">
                                    <div class="desc">
                                        <h3><i class="fa fa-quote-left"></i> Great & Talented Team!</h3>
                                        <p class="lead">The master-builder of human happines no one rejects, dislikes
                                            avoids pleasure itself, because it is very pursue pleasure. </p>
                                    </div>
                                    <div class="testi-meta">
                                        <img src="uploads/testi_03.png" alt="" class="img-responsive alignright">
                                        <h4>Venanda Mercy <small>- Newyork City</small></h4>
                                    </div>
                                    <!-- end testi-meta -->
                                </div>
                                <!-- end testimonial -->
                            </div><!-- end carousel -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end section -->

            <div class="copyrights">
                <div class="container-fluid">
                    <div class="footer-distributed">
                        <div class="footer-left">
                            <p class="footer-links">
                                <a href="#">Home</a>
                                <a href="#">Blog</a>
                                <a href="#">Pricing</a>
                                <a href="#">About</a>
                                <a href="#">Faq</a>
                                <a href="#">Contact</a>
                            </p>
                            <p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">Fresh Cuts
                                    Appointments</a> Design By : John Nava</a></p>
                        </div>

                        <div class="footer-right">
                            <form method="get" action="#">
                                <input placeholder="Subscribe our newsletter.." name="search">
                                <i class="fa fa-envelope-o"></i>
                            </form>
                        </div>
                    </div>
                </div><!-- end container -->
            </div><!-- end copyrights -->
        </div>
    </div><!-- end wrapper -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <script src="js/responsive-tabs.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

    <!-- Menu Toggle Script -->
    <script>
        (function ($) {
            "use strict";
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
            smoothScroll.init({
                selector: '[data-scroll]', // Selector for links (must be a class, ID, data attribute, or element tag)
                selectorHeader: null, // Selector for fixed headers (must be a valid CSS selector) [optional]
                speed: 500, // Integer. How fast to complete the scroll in milliseconds
                easing: 'easeInOutCubic', // Easing pattern to use
                offset: 0, // Integer. How far to offset the scrolling anchor location in pixels
                callback: function (anchor, toggle) { } // Function to run after scrolling
            });
        })(jQuery);
    </script>

</body>

</html>