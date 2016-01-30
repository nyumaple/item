<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
	<title>MyBook</title>
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
			font-size: 20px;
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
<%int j=1; %>
<div id="display">
<s:iterator value="result" status="index">
		<dl>
			<dt>
				<a href="#" alt="" target="_blank">
					<img src="bookpicture/<s:property value="imgpath"/>" />
				</a>
			</dt>
			<dd class="intro">
				<a href="#"  onclick="subsee(<%=j%>)"><s:property value="name"/></a>
				<div style="display:none">
				<form id="seebook<%=j%>" action="tosee" method="post">
				<input type="text" name="bookId" value='<s:property value="id"/>'/> 
				</form>
				</div>
				<p><s:property value="imgpath"/></p>
				<p>书籍类别：<s:property value="kind"/></p>
				<p><a id="user" >书籍卖家：<s:property value="selluser"/></a></p>
				<div style="display:none">
				<form id="sub<%=j%>" method="post">
				<input type="text" name="username" value="<s:property value="selluser"/>"/> 
				</form>
				</div>
			</dd>
			<dd id="price">
				<p>
					<span><s:property value="price"/></span>元
				</p>
			</dd>
		</dl>
	<%j=j+1; %>

</s:iterator>	
	</div>
<%int i=1; %>
<s:iterator value="userResult">
<div id="user<%=i%>" style="display:none">
				用户姓名：<a href="#" target="_blank"><s:property value="name"/></a>
				<p>邮箱：<s:property value="mail"/></p>
				<p>手机号码：<s:property value="phone"/></p>
				<p>QQ号码：<s:property value="qq"/></p>
		<%i=i+1; %>
		</div>
</s:iterator>	


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
function delcfm() {
	 if (!confirm("确认要删除？")) {
	     return false;
	   }
	 return true;
}
</script>
<script src="globle.js"></script>
<script src="wq.js"></script>
</body>
</html>
