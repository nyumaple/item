<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<jsp:include page="head.jsp" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../css/category-backend.css">
		<script type="text/javascript" src="../js/category-backend.js"></script>
	</head>
	<body>
	    
		<div id="center">
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
	
			<div class="CategoryImage" style=display:block>
				<img class="CategoryLine" src="../imag/categoryLine.png"/>
				<p class="categoryName">>Apparel</p>
				
				<div class="goods">
					<a href="#">
					<img class="goodsImag" src="../imag/umbrella.jpg">
					<p class="operator delete">delete</p>
					<p class="operator update">update</p>
					<p class="goodsId">umbrella#001-long handled umbrella</p>
					<p class="goodsPay">$10/low as</p>
					<img class="goodsShallow" src="../imag/shadow.png">
					</a>
				</div>

				<div class="goods addItem">
					<img class="goodsImag" src="../imag/add.png">
					<img class="goodsShallow" src="../imag/shadow.png">
				</div>
			</div>

			<div id="addForm" style="display:none">
				<form>
					operation:<input type="text" name="operation" value=""/></br>
					item-name:<input type="text" name="item-name" value=""/></br>
					</br>
					image<input type="file"/></br></br>

					<p>blank</p>
					<ul class="addQty">
						<li><p>Qty</p></li>
						<li><input type="number" name="blank_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p></li>
						<li><input type="number" name="blank_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_pri" min="0" step="10" value=""></li>
					</ul>

					</br></br>
					<p>embroidery</p>
					<ul class="addQty">
						<li><p>Qty</p></li>
						<li><input type="number" name="embroidery_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p></li>
						<li><input type="number" name="embroidery_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_pri" min="0" step="10" value=""></li>
					</ul>

					</br></br>
					<p>fullColor</p>
					<ul class="addQty">
						<li><p>Qty</p><li>
						<li><input type="number" name="fullColor_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_qty" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p></li>
						<li><input type="number" name="fullColor_pri"min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_pri"min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_pri"min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_pri"min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_pri"min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_pri"min="0" step="10" value=""></li>
						<li><input type="number" name="fullColor_pri"min="0" step="10" value=""></li>
					</ul>

					</br></br>

					<p>printed</p>
					<ul class="addQty">
						<li><p>Qty</p><li>
						<li><input type="number" name="printed_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p><li>
						<li><input type="number" name="printed_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_pri" min="0" step="10" value=""></li>
					</ul>
					
					</br></br>

					<p>CMYK</p>
					<ul class="addQty">
						<li><p>Qty</p><li>
						<li><input type="number" name="CMYK_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_qty" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_qty" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p><li>
						<li><input type="number" name="CMYK_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_pri" min="0" step="10" value=""></li>
						<li><input type="number" name="CMYK_pri" min="0" step="10" value=""></li>
					</ul>
					</br></br>

					min_number of order<input type="number" name ="min_num">

					</br></br>

					description<textarea row="100" column="100" id="description">I love you</textarea>

					<input type="button" id = "returnButton" value="return">


					<input type="submit" value="submit">
					</br></br>
					</br></br>
				</form>
			</div>
		</div>
	</body>
</html>
