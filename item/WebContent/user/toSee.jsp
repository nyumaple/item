<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<title>IWantBook</title>
	<link href="reset.css" rel="stylesheet" type="text/css" /> 
	<style type="text/css">
		body{
			position: relative;
			width: 920px;
			margin: 0 auto;
			font-family: "微软雅黑","宋体";
			background: url("bg2.jpg");
		}
		#content{
			position: absolute;
			top: 20px;
			height: 288px;
			padding-bottom: 15px;
			background-color: rgba(255,255,255,0.6);
		}
		#content #detail{
			float: right;
			width: 580px;
			margin-left: 30px;
			margin-top: 10px;
		}
		#content #detail p{
			font-size: 14px;
			margin-top:5px;
		}
		#content #detail span{
			margin-left: 15px;
			color: #555;
			font-weight:bold;
		}
		#content #detail #user{
			font-weight: bold ; 
			font-size: 20px ;
			color: #777; 
			margin-left: 0;
		}
		#content #detail #cl{
			width: 85px;
			height: 35px;
			float: right;
		}
		#content #cl span{
			font-size: 14px;
			font-weight: normal;
		}
		#content #detail #collect{
			float: right;
			width: 30px;
			height: 30px;
			border: none;
			margin-top: -8px;
		}
		#content #detail #describe{
			margin-top: 15px;
			font-size: 16px ;
			font-weight: bold ; 
			color: red; 
			display: block;
			height: 100px;
			overflow: hidden;
			margin-bottom: 20px;
		}
		#content a,#comment a{
			color: blue;
			font-size: 16px;
		}
		#content img{
			width: 300px;
			height: 300px;
			border: 1px solid #CCC;
		}
		#content a:hover,#comment a:hover{
			text-decoration: underline;
		}
		#comments{
			position: absolute;
			top: 680px;
			border-top: 2px solid orange;
			font-size: 13px;
			max-height: 990px;
			margin-bottom: 40px;
			color: #000;
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
			background-color: rgba(255,255,255,0.4);
		}
		#comments #comment span{
			margin-right: 10px;
			float: right;
			color: #777;
		}
		#liuyan{
			position: absolute;
			top: 390px;
			height: 230px;
			border-top: 2px solid orange;
		}
		#liuyan textarea{
			display: block;
			width: 920px;
			height: 110px;
			margin-bottom: 15px;
			padding: 10px;
		}
		#liuyan input[type="submit"]{
			width: 70px;
			height: 40px;
			background-color: orange;
			border: 1px solid #CCC;
			color: #FFF;
			font: 13px "微软雅黑","宋体";
			letter-spacing: 5px;
		}
		
		#modifyForm input{
		    
		}

		#delete{
		    top:220px;
		    left:650px;
		}
		#modify{
		    top:220px;
		    left:750px;
		}
		#collection{
		position: absolute;
		    width:200px;
		    height:150px;
		    top:0px;
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
	<div id="content">
		<div id="detail">
			<p id="user"><s:property value="book.name"/></p>
			<div id="cl">
				<span>收藏</span>
				
				<img src="collect.gif" onclick="collectReason('<s:property value="#session.user_name"/>','<s:property value="book.id"/>')"  alt="收藏" title="collect" id="collect" />
			</div>
			<p>书号：<s:property value="book.num"/> 类别：<s:property value="book.kind"/></p>
			
			<p id="describe"><s:property value="book.describe"/></p>
			卖家：<a href="#" onclick="sub()"><s:property value="book.selluser"/></a>
			<p>手机:<span><s:property value="user.phone"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QQ&nbsp;&nbsp;:<span><s:property value="user.qq"/></span></span><p/>
			<p>邮箱:<span><s:property value="user.mail"/></span><p/>
			<p>价格:<span><s:property value="book.price"/></span>元&nbsp &nbsp &nbsp &nbsp
			<s:if test="isUser==1">
			<form id="delete" action="deletebook"  onsubmit="return delcfm()">
			<input type="hidden" name="bookId" value="<s:property value="book.id"/>"/>
			<input type="submit" value="删除"/>
			</form>
			</s:if>
			<p/>
			<div style="display:none">
				<form id="sub" action="toSeeOthers" method="post">
				<input type="text" name="username" value="<s:property value="book.selluser"/>"/> 
				</form>
				</div>
		    </div>
		<img src="bookpicture/<s:property value="book.imgpath"/>" alt="" />
	</div>
	
	<form id="liuyan" action="addComments" method="post">
		<p>填写留言</p>
		<input type="hidden" name="username" value="<s:property value="user.name"/>"/>
		<input type="hidden" name="b_id" value="<s:property value="book.id"/>"/>
		<textarea name="text"></textarea>
		<input type="submit" value="提交" />
	</form>
	
	
	<div id="comments" style=" width:950px;">
		<p id="pl">评论</p>
		<%int j=1; %>
		<s:iterator value="commentsList">
		<div id="comment">
			<a href="#"><s:property value="username"/></a><span><s:date name="date" format="yyyy-MM-dd" /></span><hr />
			<p><s:property value="text"/></p>
		</div>
		<%j++; %>
		</s:iterator>
		<%if(j==1){%>
		<div id="comment">
		
			<p>本书暂时没有评论哦-_-||~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</p>
		</div>
		<%} %>
	</div>
	<div id="modify1" style="display:none">
	<form id="modifyForm" action="modifyBook" method="post">
	<p><input type="text" name="id" value="<s:property value="book.id"/>"/></p>
	书籍名称：<input type="text" name="name" value="<s:property value="book.name"/>"/>
	<p>书籍号：<input type="text" name="num" value="<s:property value="book.num"/>"/></p>
	<p>书籍价格：<input type="text" name="price" value="<s:property value="book.price"/>"/></p>
	<p>书籍类型：<select value="<s:property value="book.kind"/>">
	                <option value="计算机">计算机</option>
					<option value="数学">数学</option>
					<option value="文史">文史</option>
					<option value="英语">英语</option>
					<option value="基础学科">基础学科</option>
					<option value="经济">经济</option>
					<option value="管理">管理</option>
					<option value="其他">其他</option>
					</select></p>
	<p><textarea></textarea></p>
	</form>
	</div>
	<script>
function delcfm() {
	 if (!confirm("确认要删除？")) {
	     return false;
	   }
	 return true;
}

function sub()
{
	
	var a = "sub";
	var c=document.getElementById(a);
	c.submit();
	}
	
function showxiangqing(){
	var diag = new Dialog();
	diag.Width = 300;
	diag.Height = 450;
	diag.Title = "";
	diag.InvokeElementId="modify1";
	//diag.OKEvent = function(){$id("username").value||Dialog.alert("用户名不能为空");$id("userpwd").value||Dialog.alert("密码不能为空")};//点击确定后调用的方法
	diag.show();
}
	</script>
	<script src="zDrag.js"></script>
	<script src="zDialog.js"></script>
    <script src="globle.js"></script>
	<script src="collect.js"></script>

</body>
</html>