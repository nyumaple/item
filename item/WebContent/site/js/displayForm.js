//window.onload=function() {
//	var edit = document.getElementById("edit");
//	var form = document.getElementById("form");
//	var hide = document.getElementById("returnButton");
//
//	edit.onclick = function() {
//		form.style.display = "block";
//	};
//	hide.onclick = function() {
//		form.style.display = "none";
//	};
//	
//};
$(document).ready(function() {
	$("#edit").click(function() {
		$("#form").toggle();
	});
});