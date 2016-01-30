<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../css/advertisement-backend.css">
		<script src="../js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../js/displayForm.js"></script>
		<script type="text/javascript" src="../js/advertisement-backend.js"></script>

	</head>

	<body>
		<jsp:include page="head.jsp" />
		<div id="form" style=display:none>
			1st id<input type="text" name="id" /></br></br>
			2nd id<input type="text" name="id" /></br></br>
			3rd id<input type="text" name="id" /></br></br>
			4th id<input type="text" name="id" /></br></br>
			5th id<input type="text" name="id" /></br></br>
			6th id<input type="text" name="id" /></br></br>
			7th id<input type="text" name="id" /></br></br>
			8th id<input type="file" name="image" /></br></br>
			<input type="submit" value="submit" />
			
		</div>
		<div id="center">
			<p id = "edit">edit</p>
			<img id="advertisementLine" src="../imag/firstLine.png" />
			<ul id="leftMenu">
				<li id="first">Overview</li>
				<li><a href="#">Apparel</a></li>
				<li><a href="#">Bags</a></li>
				<li><a href="#">Balloon</a></li>
				<li><a href="#">Cup</a></li>
				<li><a href="#">Key rings</a></li>
				<li><a href="#">notebook</a></li>
				<li><a href="#">Pen</a></li>
				<li><a href="#">Prize</a></li>
				<li><a href="#">Stickers</a></li>
				<li><a href="#">Toys</a></li>
				<li><a href="#">Umbrella</a></li>
			</ul>

			<div id="adImag">
			<div id="bigPic">
				<a href="#">
					<img id="mainAd" src="../imag/umbrella.jpeg" alt="">
				</a>
				<a href="#">
					<img id="mainAd" src="../imag/umbrella.jpg" alt="">
				</a>
				<a href="#">
					<img id="mainAd" src="../imag/umbrella.jpeg" alt="">
				</a>
				<a href="#">
					<img id="mainAd" src="../imag/umbrella.jpg" alt="">
				</a>
				<a href="#">
					<img id="mainAd" src="../imag/umbrella.jpeg" alt="">
				</a>
			</div>

				<ul id="thumbs">
					<li class="active" rel="1"><img class="smallImag first" src="../imag/umbrella.jpeg" alt=""/></li>
					<li rel="2"><img class="smallImag second" src="../imag/umbrella.jpg"></li>
					<li rel="3"><img class="smallImag second" src="../imag/umbrella.jpeg"></li>
					<li rel="4"><img class="smallImag second" src="../imag/umbrella.jpg"></li>
					<li rel="5"><img class="smallImag second" src="../imag/umbrella.jpeg"></li>
			</div>

			<div id="rightBox">
				<img class="adBox" src="../imag/rightAd.png">
				<a href="#">
					<img class="firstAd" src="../imag/pen.png">
				</a>
				<p class="price first">only</p>	
				<p class="price number">2.0$</p>
				<img class="newArrival" src="../imag/rightAd.png">
				<a href = "#">
					<img class="secondAd" src="../imag/usb.jpg">
				</a>
				<p class="price NewArrival">New Arrival</p>
			</div>

			<div id="orderProcess" >
				<img id="orderBox" src="../imag/orderBox.png">
				<p id="orderProcess">ORDER PROCESS</p>

				<div id="orderCircle">
					<img class="circle" src="../imag/circle.png">
					<img class="circle" src="../imag/circle.png">
					<img class="circle" src="../imag/circle.png">
					<img class="circle" src="../imag/circle.png">
				</div>

				<div id="orderIntro">
					<p class="orderIntro">category</p>
					<p class="orderIntro">style</p>
					<p class="orderIntro">number</p>
					<p class="orderIntro">cart</p>
				</div>

				<div id="rightArrow">
					<img class="rightArrow" src="../imag/rightArrow.png">
					<img class="rightArrow" src="../imag/rightArrow.png">
					<img class="rightArrow" src="../imag/rightArrow.png">					
				</div>
			</div>

			<div id="longAdvertisement">
				<a href="#">
					<img src="../imag/advertisement.png"/>
				</a>
			</div>

			<div id="category">
				<img id="classCategory" src="../imag/orderBox.png">
				<div class="text">
					<p class="title">CATEGORIES</p>
				</div>
			</div>



		</div>
		
	<jsp:include page="last.jsp" />

	</body>
</html>
