<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查看购物车商品页面</title>
</head>
<body>
<h3>这里是结账柜台，请确认以下信息。</h3>
<br />
<%

    String id=(String) session.getAttribute("id");
    out.println("您的会员卡号：" + id);
    Enumeration enumsec= session.getAttributeNames();
    out.println("<br>购物车中的商品清单：<br>");
    while (enumsec.hasMoreElements()) {
        String ser=(String)enumsec.nextElement();
        String scr=(String)session.getAttribute(ser);
        if (!(scr.equals(id))) {
            out.println("  " + scr + "<br>");
            session.removeAttribute(ser);
        }
    }
%>
<a href="loginID.jsp"> 修改个人信息</a>
<a href="food.jsp"> 继续选购</a>
</body>
</html>