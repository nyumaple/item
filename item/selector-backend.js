window.onload = function ()
{
	var oLi = document.getElementById("tag").getElementsByTagName("li");
	var oUl = document.getElementById("content").getElementsByTagName("div");
	var colors_oLi=document.getElementById("colors").getElementsByTagName("li");
	var where_oLi=document.getElementsByClassName("whereToPrint")[0].getElementsByTagName("li");
	var printMethod=document.getElementsByName("imprintMethod")[0];
	var selectColor=document.getElementsByName("color")[0];
	var selectWhere=document.getElementsByName("where")[0];

	printMethod.value="Order With Logo";
	for(var i = 0; i < oLi.length; i++)
	{
		oLi[i].index = i;
		oLi[i].onclick = function ()
		{
			for(var n = 0; n < oLi.length; n++) oLi[n].className="";
			this.className = "current";
			for(var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
			oUl[this.index].style.display = "block";
			if (this.index == 0) {
				printMethod.value="Order With Logo";
			} else if (this.index == 1) {
				printMethod.value="CMYK";
			} else if ( this.index == 2) {
				printMethod.value="Laser Engraved";
			} else if (this.index == 3) {
				printMethod.value="Blank";
			} else if (this.index == 4) {
				printMethod.value="sample";
			}
		}	
	}

	selectColor.value="orange";
	for (var i=0; i < colors_oLi.length; i++) {
		colors_oLi[i].index = i;
		colors_oLi[i].onclick = function() {
			for (var n = 0; n < colors_oLi.length; n++) {
				colors_oLi[n].className="";
			}
			this.className="currentColor";
			if (this.index == 0) {
				selectColor.value="orange";
			} else if (this.index==1) {
				selectColor.value="purple";
			} else if (this.index==2) {
				selectColor.value="red";
			} else if (this.index==3) {
				selectColor.value="yellow";
			}
		}
	}

	for (var i=0; i < where_oLi.length; i++) {
		document.getElementsByName("leftBreast")[0].checked=true;
		where_oLi[i].index=i;
		where_oLi[i].onclick=function() {
			if (this.className == "") {
				this.className="currentPlace";
			} else if (this.className == "currentPlace") {
				this.className="";
			}

			for (var n = 0; n < where_oLi.length; n++) {
				if (where_oLi[n].className == "currentPlace") {
					if (n == 0) {
						document.getElementsByName("leftBreast")[0].checked=true;
					} else if (n == 1) {
						document.getElementsByName("rightBreast")[0].checked=true;
					} else if (n == 2) {
						document.getElementsByName("fullFont")[0].checked=true;
					} else if (n == 3) {
						document.getElementsByName("upperBack")[0].checked=true;
					} else if (n == 4) {
						document.getElementsByName("lowerBack")[0].checked=true;
					} else if (n == 5) {
						document.getElementsByName("fullBack")[0].checked=true;						
					}
				} else if (where_oLi[n].className == "") {
					if (n == 0) {
						document.getElementsByName("leftBreast")[0].checked=false;
					} else if (n == 1) {
						document.getElementsByName("rightBreast")[0].checked=false;
					} else if (n == 2) {
						document.getElementsByName("fullFont")[0].checked=false;
					} else if (n == 3) {
						document.getElementsByName("upperBack")[0].checked=false;
					} else if (n == 4) {
						document.getElementsByName("lowerBack")[0].checked=false;
					} else if (n == 5) {
						document.getElementsByName("fullBack")[0].checked=false;						
					}
				}
			}
		}
	}

	var submit = document.getElementsByClassName("atc")[0];
	var lastForm = document.getElementById("lastForm");
	var firstForm = document.getElementById("firstForm");
	var numberBox = document.getElementsByClassName("numberBox");

	submit.onclick = function() {
		firstForm.submit();
	}

	for (var i = 0; i < numberBox.length; i++) {
		numberBox[i].onchange=function() {
						
		}
	}
}
