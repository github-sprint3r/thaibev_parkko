<%@ page import="java.io.*" %>
<html>
<head>
	<title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>
	<%	
	String paths="C:\\Users\\st\\workspace\\ParkKo\\WebContent\\Database\\CarDB.txt"; 
	
	BufferedReader br = new BufferedReader(new FileReader(paths));

	String line1 = null, line2 = null;
	line1 = br.readLine();
	if (line1 != null) {
	    line2 += br.readLine();
	}
	out.println(line2);
	%>
</body>
</html>