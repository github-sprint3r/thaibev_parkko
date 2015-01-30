<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

	<%
	//String licenseNumber = request.getParameter("carNumber");//"ฌข1597";
	//licenseNumber += "|";
	String LadyparkReq = request.getParameter("LadyParkDB");
	

	String paths= getServletContext().getRealPath("Database/LadyParkDB.txt");

	//String paths="C:\\Users\\st\\workspace\\ParkKo\\WebContent\\Database\\LadyParkDB.txt"; 
	
	if (LadyparkReq != null)
	{
		//String file = getServletContext().getRealPath(paths);
	    
        FileWriter filewriter = new FileWriter(paths, false);
        filewriter.write(LadyparkReq);
        filewriter.close();
	}
	

	
	BufferedReader br = new BufferedReader(
							new InputStreamReader(
								new FileInputStream(paths), "UTF-8"));

	String line = null;
	String result = "|||";
	line = br.readLine();
	br.close();
	
	out.println(line);
	//String redirectURL = "http://localhost:8080/ParkDetail.jsp?Data=" + result;
    //response.sendRedirect(redirectURL);
	%>
