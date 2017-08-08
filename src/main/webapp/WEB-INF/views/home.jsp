
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HOME</title>

</head>
<body style="background-color:#C8C8C8">

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

				<h2 style="text-align:center;">SPECIAL OFFERS COMING SOON</h2>
				<p class="lead">GRAB THESE OFFERS BEFORE THE RUN OFF.... !!</p>
			</div>
			<!-- ending 12 columns -->

		</div>
		<!-- offer panel end -->

		<div class="row" id="offers" style="text-align:center;" >
		<div class="col-sm-4 feature">
			<div class="panel" style="background-color: #C8C8C8">
				<div class="panel-heading">
					<h3 class="panel-title">HOLY TREK</h3>
				</div>
				<!-- ending panel heading -->

				<img src="images/p22.jpg" alt="VISIT THIS HOLY PLACE"
					class="img-circle" class="img-responsive" >
				<p>This is the to get the peace of mind and rejuvenate yourself</p>

				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-warning btn-block"
					data-toggle="modal" data-target="#myModal1">HOLY PLACE</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal1" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header" >
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title" >HOLY TREK</h4>
							</div>
							<div class="modal-body">
							<div class="col-md-12">
							<div class="row">
							<div class="col-sm-6">
							 <img src="images/place1.jpg" height="150" width="250" class="img-responsive" >
							</div>
							<div class="col-sm-6">
							 <img src="images/place2.jpg" height="400" width="250" class="img-responsive" >
							</div>
							</div>
							</div>
								<p><i>Beyond the pilgrimage site, nestles a spiritual aura  </i>Kedarnath Vasuki Tal Trek</p>
								<p>Kedarnath is one of the popular Hindu pilgrimage sites that is alighted at a lofty height of 3553 meters and holds a shrine, which is dedicated to Lord Shiva, making it one of the four sites in India’s Chota Char Dham pilgrimage tour. The Kedarnath site, on the banks of River Mandakini, is the most remote of the four sites that is located close to the Chorabari Glacier and is flanked by breathtaking snow-capped peaks. </p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- ending panel  -->
		</div>
		<!-- ending box panel division -->

		<div class="col-sm-4 feature">
			<div class="panel" style="background-color: #C8C8C8">
				<div class="panel-heading">
					<h3 class="panel-title">CHILDREN OFFERS</h3>
				</div>
				<!-- ending panel heading -->

				<img src="images/p33.jpg" alt="SWEET CHILDREN MEMORIES"
					class="img-circle" class="img-responsive" >
				<p>MAKE SOME NEW MEMORIES.. VISIT THIRUVANANTHAPURAM</p>

				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-danger btn-block"
					data-toggle="modal" data-target="#myModal2">CREATE NEW MEMORIES</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal2" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Modal Header</h4>
							</div>
							<div class="modal-body">
							<div class="col-md-12">
							<div class="row">
							<div class="col-sm-6">
							 <img src="images/tri5.jpg" height="150" width="250" class="img-responsive" >
							</div>
							<div class="col-sm-6">
							 <img src="images/tri4.jpg" height="250" width="250" class="img-responsive" >
							</div>
							</div>
							</div>
								<p><b>Thiruvananthapuram</b> also known as Trivandrum, is the capital and the largest city of the Indian state of Kerala.</p>
							<p> It is referred to as 'God's Own Country'. It is often called Trivandrum, a derivative of the original name given by the British. It lies on the southern tip of India in the west coast.</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!-- ending panel  -->
		</div>
		<!-- ending box panel division -->

			<div class="col-sm-4 feature">
				<div class="panel" style="background-color:#C8C8C8">
					<div class="panel-heading">
						<h3 class="panel-title">FAMILY PROGRAM</h3>
					</div>
					<!-- ending panel heading -->

					<img src="images/p11.jpg" alt="FAMILY VISIT" class="img-circle" class="img-responsive" >
					<p>ENJOYING WITH FAMILY WHILE GOING AROUND INDIA</p>

					<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-info btn-block"
					data-toggle="modal" data-target="#myModal3">FAMILY TIME</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal3" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">FAMILY TIME</h4>
							</div>
							<div class="modal-body">
							<div class="col-md-12">
							<div class="row">
							<div class="col-sm-6">
							 <img src="images/tri1.jpg" height="200" width="250" class="img-responsive" >
							</div>
							<div class="col-sm-6">
							 <img src="images/tri2.jpg" height="250" width="250" class="img-responsive" >
							</div>
							</div>
							</div>
								<p><b>RAJASTHAN</b></p>
								<p>At the western edge of India, their lies a picturesque state, the land of choices- Rajasthan. Rajasthan have destinations which offers to every vacation experience that you want to have, whether you choose Rajasthan Family Tour Packages with family or friends. The families who are interested in history, heritage and culture the destinations like Jaipur, Jodhpur and Jaisalmer would be suited. If you are looking for adventure in Rajasthan Family tour Packages, you will definitely like tiger country Ranthambore. For families taking Rajasthan Family Tour Packages having children with them, all cities in Rajasthan cater to their need for learning and fun with different activities within plethora of hotel options. </p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
					
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

