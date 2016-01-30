<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/detailedInf-backend.css">
		<script type="text/javascript" src="js/selector-backend.js"></script>
		
	</head>
	<body>
		<div class="center">
			<img class="detailedImag" src="iwantbook<s:property value="detailedItem.imgpath"/>"/>
			<div class="selectImprintMethod">
				<img class="headline" src="imag/detailedMenu.png"/>	
				
				
				<p class="headlineIndex">1</p>
				<p class="headlineWord">Select Imprint Method</p>
				<ul id="tag">
					<li class="current">Blank</li>
					<li>Embroidery</li>
					<li>FullColor</li>
					<li>Printed</li>
					<li>CMYK</li>
				</ul>

				<div id="content">

					<div style="display:block"> 
					<form action="updatePrices" method="post">
					<input type ="text" name="updateId" value="<s:property value="detailedItem.Id"/>"/>
						<ul class="QTYposition">
							<li class="QTY">QTY</li>
							<li class="QTY"><input type="number" name="blank_qty" min="0" step="1" value="<s:property value="blankPrice.qty1"/>"/></li>
							<li class="QTY"><input type="number" name="blank_qty" min="0" step="1" value="<s:property value="blankPrice.qty2"/>"/></li>
							<li class="QTY"><input type="number" name="blank_qty" min="0" step="1" value="<s:property value="blankPrice.qty3"/>"/></li>
							<li class="QTY"><input type="number" name="blank_qty" min="0" step="1" value="<s:property value="blankPrice.qty4"/>"/></li>
							<li class="QTY"><input type="number" name="blank_qty" min="0" step="1" value="<s:property value="blankPrice.qty5"/>"/></li>
							<li class="QTY"><input type="number" name="blank_qty" min="0" step="1" value="<s:property value="blankPrice.qty6"/>"/></li>
							<li class="QTY"><input type="number" name="blank_qty" min="0" step="1" value="<s:property value="blankPrice.qty7"/>"/></li>
						</ul>
				
						<img class="detailedline" src="imag/detailedform.png"/>

						<ul>
							<li class="number">Price</li>
							<li class="number"><input type="number" name="blank_price" min="0" step="0.1" value="<s:property value="blankPrice.price1"/>"/></li>
							<li class="number"><input type="number" name="blank_price" min="0" step="0.1" value="<s:property value="blankPrice.price2"/>"/></li>
							<li class="number"><input type="number" name="blank_price" min="0" step="0.1" value="<s:property value="blankPrice.price3"/>"/></li>
							<li class="number"><input type="number" name="blank_price" min="0" step="0.1" value="<s:property value="blankPrice.price4"/>"/></li>
							<li class="number"><input type="number" name="blank_price" min="0" step="0.1" value="<s:property value="blankPrice.price5"/>"/></li>
							<li class="number"><input type="number" name="blank_price" min="0" step="0.1" value="<s:property value="blankPrice.price6"/>"/></li>
							<li class="number"><input type="number" name="blank_price" min="0" step="0.1" value="<s:property value="blankPrice.price7"/>"/></li>
						</ul>
					</div>

					<div>
						<ul class="QTYposition">
							<li class="QTY">QTY</li>
							<li class="QTY"><input type="number" name="embroidery_qty" min="0" step="1" value="<s:property value="embroideryPrice.qty1"/>"/></li>
							<li class="QTY"><input type="number" name="embroidery_qty" min="0" step="1" value="<s:property value="embroideryPrice.qty2"/>"/></li>
							<li class="QTY"><input type="number" name="embroidery_qty" min="0" step="1" value="<s:property value="embroideryPrice.qty3"/>"/></li>
							<li class="QTY"><input type="number" name="embroidery_qty" min="0" step="1" value="<s:property value="embroideryPrice.qty4"/>"/></li>
							<li class="QTY"><input type="number" name="embroidery_qty" min="0" step="1" value="<s:property value="embroideryPrice.qty5"/>"/></li>
							<li class="QTY"><input type="number" name="embroidery_qty" min="0" step="1" value="<s:property value="embroideryPrice.qty6"/>"/></li>
							<li class="QTY"><input type="number" name="embroidery_qty" min="0" step="1" value="<s:property value="embroideryPrice.qty7"/>"/></li>
						</ul>
				
						<img class="detailedline" src="imag/detailedform.png"/>

						<ul>
							<li class="number">Price</li>
							<li class="number"><input type="number" name="embroidery_price" min="0" step="0.1" value="<s:property value="embroideryPrice.price1"/>"/></li>
							<li class="number"><input type="number" name="embroidery_price" min="0" step="0.1" value="<s:property value="embroideryPrice.price2"/>"/></li>
							<li class="number"><input type="number" name="embroidery_price" min="0" step="0.1" value="<s:property value="embroideryPrice.price3"/>"/></li>
							<li class="number"><input type="number" name="embroidery_price" min="0" step="0.1" value="<s:property value="embroideryPrice.price4"/>"/></li>
							<li class="number"><input type="number" name="embroidery_price" min="0" step="0.1" value="<s:property value="embroideryPrice.price5"/>"/></li>
							<li class="number"><input type="number" name="embroidery_price" min="0" step="0.1" value="<s:property value="embroideryPrice.price6"/>"/></li>
							<li class="number"><input type="number" name="embroidery_price" min="0" step="0.1" value="<s:property value="embroideryPrice.price7"/>"/></li>
						</ul>
						
					</div>

					<div> 
						<ul class="QTYposition">
							<li class="QTY">QTY</li>
							<li class="QTY"><input type="number" name="fullcolor_qty" min="0" step="1" value="<s:property value="fullcolorPrice.qty1"/>"/></li>
							<li class="QTY"><input type="number" name="fullcolor_qty" min="0" step="1" value="<s:property value="fullcolorPrice.qty2"/>"/></li>
							<li class="QTY"><input type="number" name="fullcolor_qty" min="0" step="1" value="<s:property value="fullcolorPrice.qty3"/>"/></li>
							<li class="QTY"><input type="number" name="fullcolor_qty" min="0" step="1" value="<s:property value="fullcolorPrice.qty4"/>"/></li>
							<li class="QTY"><input type="number" name="fullcolor_qty" min="0" step="1" value="<s:property value="fullcolorPrice.qty5"/>"/></li>
							<li class="QTY"><input type="number" name="fullcolor_qty" min="0" step="1" value="<s:property value="fullcolorPrice.qty6"/>"/></li>
							<li class="QTY"><input type="number" name="fullcolor_qty" min="0" step="1" value="<s:property value="fullcolorPrice.qty7"/>"/></li>
						</ul>
				
						<img class="detailedline" src="imag/detailedform.png"/>

						<ul>
							<li class="number">Price</li>
							<li class="number"><input type="number" name="fullcolor_price" min="0" step="0.1" value="<s:property value="fullcolorPrice.price1"/>"/></li>
							<li class="number"><input type="number" name="fullcolor_price" min="0" step="0.1" value="<s:property value="fullcolorPrice.price2"/>"/></li>
							<li class="number"><input type="number" name="fullcolor_price" min="0" step="0.1" value="<s:property value="fullcolorPrice.price3"/>"/></li>
							<li class="number"><input type="number" name="fullcolor_price" min="0" step="0.1" value="<s:property value="fullcolorPrice.price4"/>"/></li>
							<li class="number"><input type="number" name="fullcolor_price" min="0" step="0.1" value="<s:property value="fullcolorPrice.price5"/>"/></li>
							<li class="number"><input type="number" name="fullcolor_price" min="0" step="0.1" value="<s:property value="fullcolorPrice.price6"/>"/></li>
							<li class="number"><input type="number" name="fullcolor_price" min="0" step="0.1" value="<s:property value="fullcolorPrice.price7"/>"/></li>
						</ul>
					</div>

					<div> 
						<ul class="QTYposition">
							<li class="QTY">QTY</li>
							<li class="QTY"><input type="number" name="printed_qty" min="0" step="1" value="<s:property value="printedPrice.qty1"/>"/></li>
							<li class="QTY"><input type="number" name="printed_qty" min="0" step="1" value="<s:property value="printedPrice.qty2"/>"/></li>
							<li class="QTY"><input type="number" name="printed_qty" min="0" step="1" value="<s:property value="printedPrice.qty3"/>"/></li>
							<li class="QTY"><input type="number" name="printed_qty" min="0" step="1" value="<s:property value="printedPrice.qty4"/>"/></li>
							<li class="QTY"><input type="number" name="printed_qty" min="0" step="1" value="<s:property value="printedPrice.qty5"/>"/></li>
							<li class="QTY"><input type="number" name="printed_qty" min="0" step="1" value="<s:property value="printedPrice.qty6"/>"/></li>
							<li class="QTY"><input type="number" name="printed_qty" min="0" step="1" value="<s:property value="printedPrice.qty7"/>"/></li>
						</ul>
				
						<img class="detailedline" src="imag/detailedform.png"/>

						<ul>
							<li class="number">Price</li>
							<li class="number"><input type="number" name="printed_price" min="0" step="0.1" value="<s:property value="printedPrice.price1"/>"/></li>
							<li class="number"><input type="number" name="printed_price" min="0" step="0.1" value="<s:property value="printedPrice.price2"/>"/></li>
							<li class="number"><input type="number" name="printed_price" min="0" step="0.1" value="<s:property value="printedPrice.price3"/>"/></li>
							<li class="number"><input type="number" name="printed_price" min="0" step="0.1" value="<s:property value="printedPrice.price4"/>"/></li>
							<li class="number"><input type="number" name="printed_price" min="0" step="0.1" value="<s:property value="printedPrice.price5"/>"/></li>
							<li class="number"><input type="number" name="printed_price" min="0" step="0.1" value="<s:property value="printedPrice.price6"/>"/></li>
							<li class="number"><input type="number" name="printed_price" min="0" step="0.1" value="<s:property value="printedPrice.price7"/>"/></li>
						</ul>
					</div>
					
					<div> 
						<ul class="QTYposition">
							<li class="QTY">QTY</li>
							<li class="QTY"><input type="number" name="cmyk_qty" min="0" step="1" value="<s:property value="cmykPrice.qty1"/>"/></li>
							<li class="QTY"><input type="number" name="cmyk_qty" min="0" step="1" value="<s:property value="cmykPrice.qty2"/>"/></li>
							<li class="QTY"><input type="number" name="cmyk_qty" min="0" step="1" value="<s:property value="cmykPrice.qty3"/>"/></li>
							<li class="QTY"><input type="number" name="cmyk_qty" min="0" step="1" value="<s:property value="cmykPrice.qty4"/>"/></li>
							<li class="QTY"><input type="number" name="cmyk_qty" min="0" step="1" value="<s:property value="cmykPrice.qty5"/>"/></li>
							<li class="QTY"><input type="number" name="cmyk_qty" min="0" step="1" value="<s:property value="cmykPrice.qty6"/>"/></li>
							<li class="QTY"><input type="number" name="cmyk_qty" min="0" step="1" value="<s:property value="cmykPrice.qty7"/>"/></li>
						</ul>
				
						<img class="detailedline" src="imag/detailedform.png"/>

						<ul>
							<li class="number">Price</li>
							<li class="number"><input type="number" name="cmyk_price" min="0" step="0.1" value="<s:property value="cmykPrice.price1"/>"/></li>
							<li class="number"><input type="number" name="cmyk_price" min="0" step="0.1" value="<s:property value="cmykPrice.price2"/>"/></li>
							<li class="number"><input type="number" name="cmyk_price" min="0" step="0.1" value="<s:property value="cmykPrice.price3"/>"/></li>
							<li class="number"><input type="number" name="cmyk_price" min="0" step="0.1" value="<s:property value="cmykPrice.price4"/>"/></li>
							<li class="number"><input type="number" name="cmyk_price" min="0" step="0.1" value="<s:property value="cmykPrice.price5"/>"/></li>
							<li class="number"><input type="number" name="cmyk_price" min="0" step="0.1" value="<s:property value="cmykPrice.price6"/>"/></li>
							<li class="number"><input type="number" name="cmyk_price" min="0" step="0.1" value="<s:property value="cmykPrice.price7"/>"/></li>
						</ul>
					</div>
					<input type="submit" value="price-update" id="update"/>

					</form>

				</div>
				
			</div>

			<div class="selectColor">
				<img class="colorHeadline" src="imag/detailedMenu.png"/>	
				<p class="colorHeadlineIndex">2</p>
				<p class="colorHeadlineWord">Select Color</p>
				<div id="colors">
					<ul>
						<li class="currentColor"><img src="imag/orange.png"></li>
						<li><img src="imag/purple.png"></li>
						<li><img src="imag/red.png"></li>
						<li><img src="imag/yellow.png"></li>
					</ul>
				</div>
			</div>
                    
                    <form action="deleteItem" method="post">
					<input type="submit" value="delete" id="delete"/>
						<input type ="hidden" name="deleteId" value="<s:property value="detailedItem.Id"/>"/>
					</form>
					
			<div id="whereToPrint">
				<img class="whereToPrintHeadline" src="imag/detailedMenu.png"/>	
				<p class="whereToPrintHeadlineIndex">3</p>
				<p class="whereToPrintHeadlineWord">Where To Print</p>
				<div class="whereToPrint">
				    <a href="imag/whereToPrint.jpg" target="_blank">
						<img id="whereToPrint_imag" src="imag/whereToPrint.jpg" alt="where to Print">
					</a>

					<p>where do you want it printed?</p>
					<ul>
						<li class="currentPlace">Left Breast</li>
						<li>Right Breast</li>	
						<li>Full Front</li>	
						<li>Upper Back</li>	
						<li>Lower Back</li>	
						<li>Full Back</li>	
					</ul>
				</div>
			</div>

			<div id="number">
				<img class="numberHeadLine" src="imag/detailedMenu.png"/>
				<p class="numberHeadlineIndex">4</p>
				<p class="numberHeadlineWord">How Many Do You Need</p>
			<!-- 	<ul class="numberIndex">
					<li>S</li>
					<li>M</li>
					<li>L</li>
					<li>XL</li>
					<li>XXL</li>
					<li>XXXL</li>
				</ul> -->

				<form id="firstForm">
					<input class="numberBox" type="number" name="S" step="10" value="0"/>
					<input class="numberBox" type="number" name="M" step="10" value="0"/>
					<input class="numberBox" type="number" name="L" step="10" value="0"/>
					<input class="numberBox" type="number" name="XL" step="10" value="0"/>
					<input class="numberBox" type="number" name="XXL" step="10" value="0"/>
					<input class="numberBox" type="number" name="XXXL" step="10" value="0"/>
					<input type="hidden" name="imprintMethod"> 
					<input type="hidden" name="color">
					<input type="checkbox" name="leftBreast" style=display:none />
					<input type="checkbox" name="rightBreast" style=display:none />
					<input type="checkbox" name="fullFont" style=display:none />
					<input type="checkbox" name="upperBack" /style=display:none />
					<input type="checkbox" name="lowerBack" style=display:none />
					<input type="checkbox" name="fullBack" style=display:none />
				</form>


			</div>
            
           
					
			<div id="cart">
				<img class="atc" src="imag/atc.png">
			</div>
         
			<div id=productDescription>
				<div>
					<form method="post" action="updateItem">
					<p>item-update</p>
					<input name="updateId" type="hidden" value="<s:property value="detailedItem.Id"/>"/>
					kind<input type="text" name="item_kind" value="<s:property value="detailedItem.kind"/>"/>
					type<input type="text" name="item_type" value="<s:property value="detailedItem.type"/>"/>
					describe<textarea name="describe" row="500" column="500" id="description"><s:property value="detailedItem.describe"/></textarea>
					<input type="submit" value="item-update" id="description-update">
					</form>
				</div>
			</div>


		</div>

	</body>
</html>
