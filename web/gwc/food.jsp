<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>����ҳ��</title>
</head>
<body>
<form action="" method="post" name="form">
    ��ӭѡ����Ʒ��<br />
    <input type="checkbox" name="sec" value="�ͽ�ֽ" />�ͽ�ֽ
    <input type="checkbox" name="sec" value="��" />��
    <input type="checkbox" name="sec" value="����" />����
    <input type="checkbox" name="sec" value="ţ��" />ţ��<br />
    <input type="submit" name="gouwu" value="����">
    <br />
    <br />
    <a href="loginID.jsp">�޸ĸ�����Ϣ  ��</a>
    <a href="count.jsp">��ӭ�鿴���ﳵ��</a>
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