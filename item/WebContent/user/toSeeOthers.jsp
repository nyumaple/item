<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html;charset=gbk" />
	<title>查看其他用户资料</title>
	<link href="reset.css" rel="stylesheet" type="text/css" /> 
	<style type="text/css">
		body{
			background: url("bg2.jpg");
			position: relative;
			width: 930px;
			margin: 0 auto;
			font-family: "微软雅黑","宋体";
		}
		#userinfo{
			background-color: #FDF48E;
			border: 2px dashed orange;
			height: 150px;
			padding: 10px;
		}
		#userinfo #user{
			float: left;
			font-size: 30px;
			margin-top: 50px;
			color: red;
		}
		#userinfo #inforight{
			margin-top:40px;
			margin-left: 150px;
		}
		#userinfo p{
			font-size: 16px;
			color: #555;
		}
		#userinfo span{
			margin-left:15px;
			font-weight: bold;
		}
		#display{
			background-color: rgba(255,255,255,0.1);
			position: absolute;
			top: 200px;
			border: 1px solid #777;
			border-top: none;
			width: 930px;
		}
		#display dl{
			height: 122px;
			border-top: 1px solid #777;
			position: relative;
			margin: 0;
		}
	
		#display dt{
			width: 100px;
			height: 100px;
			float: left;
			margin: 10px ;
		}
		#display dt img{
			width: 100px;
			height: 100px;
		}
		#display .intro a{
			max-width: 400px;
			max-height: 23px;
			display: block;
			margin-top: 20px;
			font-size: 18px;
			color: #555;
			font-weight: bold;
			overflow: hidden;
			margin-bottom: 18px;
		}
		#display .intro #user{
			color: blue;
			font-weight: normal;
		}
		#display .intro #user{
			font-size: 16px;
			margin-top: 5px;
		}
		#display .intro a:hover{
			color: orange;
			text-decoration: underline;
		}
		#display .intro p{
			font-size: 14px;
			color: #555;
			margin-top: 3px;
		}
		#display #price{
			float: right;
			position: absolute; 
			right: 0;
			top: 50px;
		}
		#display #price p{
			font-size: 13px;
			color: #555;
			width: 100px;
			margin-bottom: 5px;
		}
		#display #price span{
			font-size: 16px;
			font-weight: bold;
			color: #FF6347;
			margin-right: 6px;
		}
		#display #price img{
			width: 30px;
			height: 30px;
			margin-top:-30px;
			margin-right: 40px;
			float: right;
		}
			#backtomain{
		    	max-width: 400px;
			max-height: 23px;
			display: block;
			margin-top: 20px;
			font-size: 18px;
			color: #555;
			font-weight: bold;
			overflow: hidden;
			margin-bottom: 18px;
		}
		
	</style>
</head>
<body>
<a id="backtomain" href="main.jsp">回到主页</a>
	<div id="userinfo">
		<p id="user">用户：<s:property value="user.name"/></p>
		<div id="inforight">
			<p>手机:<span><s:property value="user.phone"/></span></p>
			<p>QQ&nbsp;:<span><s:property value="user.qq"/></span></p>
			<p>邮箱:<span><s:property value="user.mail"/></span></p>
		</div>
	</div>
	<div id="display">
	   <%int j=1; %>
	   <s:iterator value="books">
		<dl>
			<dt>
				<a href="#" alt="">
					<img src="0.jpg" />
				</a>
			</dt>
			<dd class="intro">
				<a href="#" onclick="subsee(<%=j%>)"><s:property value="name"/></a>
				<form id="seebook<%=j%>" action="tosee" method="post" style="display:none;">
				<input type="text" name="bookId" value='<s:property value="id"/>'/> 
				</form>
				<p><s:property value="kind"/></p>
				<a href="#"  id="user"><s:property value="selluser"/></a>
			</dd>
			<dd id="price">
				<p>
					<span><s:property value="price"/></span>元
				</p>
				<form id="delete" action="deletebook"  onsubmit="return delcfm()">
			    <input id="bookid" type="text" name="bookId" value="<s:property value="id"/>"/>
			    </form>

			</dd>
		</dl><%j++; %>
		</s:iterator>
		<%if(j==1){ %>
		<dl>
			<dd class="intro">
				<p>你还没有正在出售的书籍哦-_-||~~~~~~~~~</p>

			</dd>
		</dl>
		<%} %>
	</div>
<script src="globle.js"></script>
<script src="wq.js"></script>
<script>
function sub(id)
{
	var a = "sub"+id;
	var c=document.getElementById(a);
	c.submit();
	}
	
function subsee(id)
{
	
	var a = "seebook"+id;
	var c=document.getElementById(a);
	c.submit();
	}

function deletebook(id)
{
	var a = document.getElementById("delete");
    a.submit();
	
}
</script>
</body>
</html>