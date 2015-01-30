<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
request.setCharacterEncoding("UTF8");
	int receiveMoney = Integer.parseInt(request.getParameter("receiveMoney"));	
	int parkPrice = Integer.parseInt(request.getParameter("parkPrice"));	
	int change = receiveMoney - parkPrice;

int money = change;

        int[] pay = new int[9];

        int[] numpay = new int[]{1000,500, 100, 50, 20, 10, 5,2, 1};
        for (int i= 0; i < pay.length; i++) {
            pay[i] = money/numpay[i];
            money = money%numpay[i];
        }

	String changeData = ""+ parkPrice +"|"+ receiveMoney +"|"+ change +"|"+pay[0]+"|"+pay[1]+"|"+pay[2]+"|"+pay[3]+"|"+pay[4]+"|"+pay[5]+"|"+pay[6]+"|"+pay[7]+"|"+pay[8];

	response.sendRedirect("Change.jsp?change="+changeData);
	
	
	%>
</body>
</html>