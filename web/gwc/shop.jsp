<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>导购页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String id=request.getParameter("id");
    if(id==null){
        id="";
    }
    else{
        session.setAttribute("id",id);
    }
%>
<a href="food.jsp">这里是商品清单，请选购</a><br/>
<a href="loginID.jsp">修改个人信息</a>
</body>
</html>