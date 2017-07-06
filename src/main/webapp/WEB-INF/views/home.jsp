
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="/resources/bootstrap/css/main.css" rel="stylesheet" type="text/css">
    <title>HOME</title>
</head>
<body>

    <%@ include file="navigation.jsp" %>
<div class="container">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <div class="container">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>


    <div class="carousel-inner">
      <div class="item active">
        <img src="/resources/images/1.jpg" alt="P-51" width="100%">

      </div>
      <div class="item">
        <img src="/resources/images/2.jpg" alt="F-18" width="100%">

      </div>
      <div class="item">
        <img src="/resources/images/3.jpg" alt="P-51" width="100%">

      </div>
      <div class="item">
        <img src="/resources/images/4.jpg" alt="B-52" width="100%">
        </div>
      <div class="item">
        <img src="/resources/images/5.jpg" alt="B-52" width="100%">

</div>
      <div class="item">
        <img src="/resources/images/6.jpg" alt="B-52" width="100%">

     
      </div>

      </div>
    </div>


  <!-- Control arrows -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>


</div><!--  end of  container -->

<div class="row" id="offer"><!-- offer panel start -->

	<div class="col-12">
	
		<h2>SPECIAL OFFERS</h2>
		<p class="lead">GRAB THESE OFFERS BEFORE THE RUN OFF.... !!</p>
	</div><!-- ending 12 columns -->

</div><!-- offer panel end -->

<div class="row" id="features">
		<div class="col-sm-4 feature">
			<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">HOLY TREK</h3>
					</div><!-- ending panel heading -->
					
						<img src=".jpg" alt="VISIT THIS HOLY PLACE" class="img-circle">
						<p>This is the to get the peace of mind and rejuvenate yourself</p>
						
						<a href="#" target="_blank" class="btn btn-warning btn-block">lets go!!</a>
			</div><!-- ending panel  -->
		</div><!-- ending box panel division -->
		
		<div class="col-sm-4 feature">
			<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">CHILDREN OFFERS</h3>
					</div><!-- ending panel heading -->
					
						<img src=".jpg" alt="SWEET CHILDREN MEMORIES" class="img-circle">
						<p>MAKE SOME NEW MEMORIES.. VISIT THIRUVANANTHAPURAM</p>
						
						<a href="#" target="_blank" class="btn btn-danger btn-block">CREATE NEW MEMORIES</a>
			</div><!-- ending panel  -->
		</div><!-- ending box panel division -->
		
		<div class="col-sm-4 feature">
			<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">FAMILY PROGRAM</h3>
					</div><!-- ending panel heading -->
					
						<img src=".jpg" alt="FAMILY VISIT" class="img-circle">
						<p>ENJOYING WITH FAMILY WHILE GOING AROUND INDIA</p>
						
						<a href="#" target="_blank" class="btn btn-info btn-block">FAMILY TIME!!</a>
			</div><!-- ending panel  -->
		</div><!-- ending box panel division -->
</div><!-- ending 3 offers box panels -->


</div><!--  ending home page container -->
</body>
</html>
