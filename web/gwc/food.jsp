<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>购物页面</title>
</head>
<body>
<form action="" method="post" name="form">
    欢迎选购商品：<br />
    <input type="checkbox" name="sec" value="餐巾纸" />餐巾纸
    <input type="checkbox" name="sec" value="盐" />盐
    <input type="checkbox" name="sec" value="大米" />大米
    <input type="checkbox" name="sec" value="牛奶" />牛奶<br />
    <input type="submit" name="gouwu" value="购物">
    <br />
    <br />
    <a href="loginID.jsp">修改个人信息  ！</a>
    <a href="count.jsp">欢迎查看购物车！</a>
        <%
	request.setCharacterEncoding("GB2312");
	String sec[] = request.getParameterValues("sec");
	if (sec!=null && sec.length!= 0) {
	for (int i=0;i<sec.length;i++) {
		session.setAttribute(sec[i],sec[i]);
	}
	}
			%>
</body>
</html>