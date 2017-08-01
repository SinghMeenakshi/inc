
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HOME</title>
</head>
<body >

	<%@ include file="navigation.jsp"%>
	<div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/img1.jpg" alt="tour" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/img2.jpg" alt="incredible" style="width:100%;">
      </div>
    
    <div class="item">
        <img src="images/img3.JPG" alt="india" style="width:100%;">
      </div>
      <div class="item">
        <img src="images/img4.jpg" alt="mesmerising" style="width:100%;">
      </div>
      <div class="item">
        <img src="images/img5.jpg" alt="experience" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

		<div class="row" id="offer">
			<!-- offer panel start -->

			<div class="col-12">

				<h2 style="text-align:center;">SPECIAL OFFERS</h2>
				<p class="lead">GRAB THESE OFFERS BEFORE THE RUN OFF.... !!</p>
			</div>
			<!-- ending 12 columns -->

		</div>
		<!-- offer panel end -->

		<div class="row" id="offers" style="text-align:center;">
			<div class="col-sm-4 feature">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">HOLY TREK</h3>
					</div>
					<!-- ending panel heading -->

					<img src="images/p22.jpg" alt="VISIT THIS HOLY PLACE"
						class="img-circle">
					<p>This is the to get the peace of mind and rejuvenate yourself</p>

					<a href="holy"  class="btn btn-warning btn-block">lets
						go!!</a>
				</div>
				<!-- ending panel  -->
			</div>
			<!-- ending box panel division -->

			<div class="col-sm-4 feature">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">CHILDREN OFFERS</h3>
					</div>
					<!-- ending panel heading -->

					<img src="images/p33.jpg" alt="SWEET CHILDREN MEMORIES"
						class="img-circle">
					<p>MAKE SOME NEW MEMORIES.. VISIT THIRUVANANTHAPURAM</p>

					<a href="children" target="_blank" class="btn btn-danger btn-block">CREATE
						NEW MEMORIES</a>
				</div>
				<!-- ending panel  -->
			</div>
			<!-- ending box panel division -->

			<div class="col-sm-4 feature">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">FAMILY PROGRAM</h3>
					</div>
					<!-- ending panel heading -->

					<img src="images/p11.jpg" alt="FAMILY VISIT" class="img-circle">
					<p>ENJOYING WITH FAMILY WHILE GOING AROUND INDIA</p>

					<a href="family" target="_blank" class="btn btn-info btn-block">FAMILY
						TIME!!</a>
				</div>
				<!-- ending panel  -->
			</div>
			<!-- ending box panel division -->
		</div>
		<!-- ending 3 offers box panels -->


	</div>
	<!--  ending home page container -->
	
	<%@ include file="footer.jsp"%>
</body>
</html>

