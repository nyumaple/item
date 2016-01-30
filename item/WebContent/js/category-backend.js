window.onload = function ()
{
	var form = document.getElementById("addForm");
	var add = document.getElementsByClassName("addItem")[0];
	var ret = document.getElementById("returnButton");
	var index = document.getElementsByClassName("goods");
	//var del = document.getElementsByClassName("delete")[0];
	var upd = document.getElementsByClassName("update")[0];
	var ope = document.getElementsByName("operation")[0];

	add.onclick = function () {
		form.style.display = "block";
		for (var n = 0; n < index.length; n++) {
			index[n].style.display = "none";
		}
		ope.value="add";
	};

	ret.onclick = function() {
		for (var n = 0; n < index.length; n++) {
			index[n].style.display = "block";
		}
		form.style.display = "none";
		ope.value="";
	};

	/*del.onclick = function() {
		loadXMLDoc("#",function() {
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				for (var i = 0; i < index.length-1; i++) {
					index[i].innerHTML=xmlhttp.responseText;
				}
			}
		});
	};*/

	upd.onclick = function() {
		form.style.display = "block";
		for (var n = 0; n < index.length; n++) {
			index[n].style.display = "none";
		}
		ope.value="update";
	};

	var xmlhttp;
	function loadXMLDoc(url,cfunc)
	{
		if (window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{// code for IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=cfunc;
		xmlhttp.open("GET",url,true);
		xmlhttp.send();
	}
};
