<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>����ҳ��</title>
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
<a href="food.jsp">��������Ʒ�嵥����ѡ��</a><br/>
<a href="loginID.jsp">�޸ĸ�����Ϣ</a>
</body>
</html>