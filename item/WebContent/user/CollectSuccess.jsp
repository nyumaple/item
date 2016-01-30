<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#comments{
			position: absolute;
			top: 80px;
			border-top: 2px solid orange;
			font-size: 13px;
			max-height: 990px;
			margin-bottom: 40px;
			color: #333;
		}
		#comments #pl,form p{
			font-size: 23px;
			font-weight: bold;
			color: orange;
			margin-top: -35px;
			margin-bottom: 40px;
		}
		#comments #comment{
			height: 120px;
			border: 1px solid #CCC;
			padding: 10px;
			margin-bottom: 20px;
			background-color: #EEE;
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
<div id="comments" style=" width:950px;">
		<p id="pl"><s:property value="tip"/></p>
		<div id="comment">
       <a href="tomanage" >去我的书库</a>
       <a href="mycollect" >去我的的收藏</a>
		</div>
</div>
</body>
</html>