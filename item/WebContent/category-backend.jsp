<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<jsp:include page="head.jsp" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/category-backend.css">
		<script type="text/javascript" src="js/category-backend.js"></script>
	</head>
	<body>
	    
		<div id="center">
			<img id="advertisementLine" src="imag/firstLine.png" />
			<ul id="leftMenu">
				<li><a href="findOverview.action">Overview</a></li>
				<li><a href="findApparel.action">Apparel</a></li>
				<li><a href="findBags.action">Bags</a></li>
				<li><a href="findBalloon.action">Balloon</a></li>
				<li><a href="findCup.action">Cup</a></li>
				<li><a href="findKeyrings.action">Key rings</a></li>
				<li><a href="findNotebook.action">Notebook</a></li>
				<li><a href="findPen.action">Pen</a></li>
				<li><a href="findPrize.action">Prize</a></li>
				<li><a href="findStickers.action">Stickers</a></li>
				<li><a href="findToys.action">Toys</a></li>
				<li><a href="findUmbrella.action">Umbrella</a></li>
			</ul>
	
			<div class="CategoryImage" style=display:block>
				<img class="CategoryLine" src="imag/categoryLine.png"/>
				<p class="categoryName">>
				<s:if test="kind!=null"><s:property value ="kind"/></s:if>
				<s:else>Overview</s:else></p>
				
				
				<s:iterator value="ans" status="index">
				<div class="goods">
					<a href="#">
					<img class="goodsImag" src="iwantbook<s:property value="imgpath"/>"/>
					<form action = "seeDetail" method="post">
					<input type="hidden" name="detailedId" value="<s:property value='id'/>"/>
					<input type="submit" value="detailed Info"/>
					</form>
					<p class="goodsId"><s:property value="kind"/>
					  <s:property value="type"/></p>
					<p class="goodsPay"><s:property value="price"/></p>
					<img class="goodsShallow" src="imag/shadow.png">
					</a>
				</div>
				</s:iterator>

				<div class="goods addItem">
					<img class="goodsImag" src="imag/add.png">
					<img class="goodsShallow" src="imag/shadow.png">
				</div>
			</div>

			<div id="addForm" style="display:none">
				<form id="add_item" action="addItem" method="post" enctype="multipart/form-data">
					operation:<input disabled="disabled" type="text" name="operation" value=""/></br>
					item-kind:<input type="text" name="item_kind" value="<s:property value="kind"/>"/></br>
					item-type:<input type="text" name="item_type" value=""/></br>
					</br>
					image<s:file name="excelFile"/></br></br>

					<p>blank</p>
					<ul class="addQty">
						<li><p>Qty</p></li>
						<li><input type="number" name="blank_qty" value="100" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" value="200" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" value="300" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" value="400" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" value="500" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" value="600" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_qty" value="700" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p></li>
						<li><input type="number" name="blank_price" value="110" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_price" value="120" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_price" value="130" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_price" value="140" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_price" value="150" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_price" value="160" min="0" step="10" value=""></li>
						<li><input type="number" name="blank_price" value="170" min="0" step="10" value=""></li>
					</ul>

					</br></br>
					<p>embroidery</p>
					<ul class="addQty">
						<li><p>Qty</p></li>
						<li><input type="number" name="embroidery_qty" value="100" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" value="200" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" value="300" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" value="400" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" value="500" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" value="600" min="0" step="10" value=""></li>
						<li><input type="number" name="embroidery_qty" value="700" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p></li>
						<li><input type="number" name="embroidery_price" value="110" min="0" step="0.1" value=""></li>
						<li><input type="number" name="embroidery_price" value="120" min="0" step="0.1" value=""></li>
						<li><input type="number" name="embroidery_price" value="130" min="0" step="0.1" value=""></li>
						<li><input type="number" name="embroidery_price" value="140" min="0" step="0.1" value=""></li>
						<li><input type="number" name="embroidery_price" value="150" min="0" step="0.1" value=""></li>
						<li><input type="number" name="embroidery_price" value="160" min="0" step="0.1" value=""></li>
						<li><input type="number" name="embroidery_price" value="170" min="0" step="0.1" value=""></li>
					</ul>

					</br></br>
					<p>fullColor</p>
					<ul class="addQty">
						<li><p>Qty</p><li>
						<li><input type="number" name="fullcolor_qty" value="100" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_qty" value="200" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_qty" value="300" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_qty" value="400" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_qty" value="500" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_qty" value="600" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_qty" value="700" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p></li>
						<li><input type="number" name="fullcolor_price" value="110" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_price" value="120" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_price" value="130" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_price" value="140" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_price" value="150" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_price" value="160" min="0" step="10" value=""></li>
						<li><input type="number" name="fullcolor_price" value="170" min="0" step="10" value=""></li>
					</ul>

					</br></br>

					<p>printed</p>
					<ul class="addQty">
						<li><p>Qty</p><li>
						<li><input type="number" name="printed_qty" value="100" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" value="200" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" value="300" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" value="400" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" value="500" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" value="600" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_qty" value="700" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p><li>
						<li><input type="number" name="printed_price" value="110" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_price" value="120" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_price" value="130" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_price" value="140" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_price" value="150" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_price" value="160" min="0" step="10" value=""></li>
						<li><input type="number" name="printed_price" value="170" min="0" step="10" value=""></li>
					</ul>
					
					</br></br>

					<p>CMYK</p>
					<ul class="addQty">
						<li><p>Qty</p><li>
						<li><input type="number" name="cmyk_qty" value="100" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_qty" value="200" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_qty" value="300" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_qty" value="400" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_qty" value="500" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_qty" value="600" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_qty" value="700" min="0" step="10" value=""></li>
					</ul>	

					<ul class="addPrice">
						<li><p>Prc</p><li>
						<li><input type="number" name="cmyk_price" value="110" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_price" value="120" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_price" value="130" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_price" value="140" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_price" value="150" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_price" value="160" min="0" step="10" value=""></li>
						<li><input type="number" name="cmyk_price" value="170" min="0" step="10" value=""></li>
					</ul>
					</br></br>

					min_number of order<input type="number" name ="minorders">

					</br></br>

					description<textarea row="100" column="100" name="describe" id="description">I love you</textarea>

					<input type="button" id = "returnButton" value="return">


					<input type="submit" value="submit">
					</br></br>
					</br></br>
				</form>
			</div>
		</div>
	</body>
</html>
