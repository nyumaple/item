//window.onload = function () {
//	var oLi = document.getElementById("mainMenu").getElementsByTagName("li");
//
//	for (var i = 0; i < oLi.length; i++) {
//		oLi[i].onmouseover = function() {
//			for (var n = 0; n < oLi.length; n++) {
//				oLi[n].className = "";
//			}
//			this.className="current";
//		};
//
//		oLi[i].onmouseout = function() {
//			for (var n = 0; n < oLi.length; n++) {
//				oLi[n].className = "";
//			}
//		};
//	}
//};
$(document).ready(function(){
	var oLi = document.getElementById("mainMenu").getElementsByTagName("li");
	for (var i = 0; i < oLi.length; i++) {
	    oLi[i].onmouseover = function() {
			for (var n = 0; n < oLi.length; n++) {
				oLi[n].className = "";
			}
			this.className="current";
		};

		oLi[i].onmouseout = function() {
			for (var n = 0; n < oLi.length; n++) {
				oLi[n].className = "";
			}
		};
	}
});
