﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	// String carNumber = "ฌข1597";
	String carNumber = request.getParameter("carNumber");
	
	carNumber += "|";
	// String paths="C:\\Users\\st\\workspace\\ParkKo\\WebContent\\Database\\CarDB.txt"; 
	String paths= getServletContext().getRealPath("Database/CarDB.txt"); 
	
	BufferedReader br = new BufferedReader(
							new InputStreamReader(
								new FileInputStream(paths), "UTF-8"));

	String line = null;
	String result = "|||";
	while ( (line = br.readLine()) != null)
	{
		if (line.startsWith(carNumber) ) {
			result = line;
			break;
		}
	}
	br.close();
	// out.println(result);
	// result = URLEncoder.encode(result);
	response.sendRedirect("ParkDetail.jsp?data="+result);
	
	
	%>
</body>
</html>