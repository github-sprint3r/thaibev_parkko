<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
	String paths="C:\\Users\\st\\workspace\\ParkKo\\WebContent\\Database\\CarDB.txt"; 
	
	BufferedReader br = new BufferedReader(
							new InputStreamReader(
								new FileInputStream(paths), "UTF-8"));

	String line1 = null, line2 = null;
	line1 = br.readLine();
	if (line1 != null) {
	    line2 += br.readLine();
	}
	out.println(line2);
	out.println("aaaa");
	%>
</body>
</html>