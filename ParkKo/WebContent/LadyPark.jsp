<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	#Park1 {
  		height:100px;width:200px;text-align:center;
  		float:left;
	}
	#Park2 {
		height:100px;width:200px;text-align:center;
  		float:right;
	}
	#Park3 {
  		height:100px;width:200px;text-align:center;
  		float:left;
	}
	#Park4 {
		height:100px;width:200px;text-align:center;
  		float:right;
	}
</style>
<script language="javascript">
	var GOGREEN = "1";
	var KITTYPINK = "0";
	var GOGREENCOLOR = "#77BB44";
	var KITTYPINKCOLOR = "#FF4499";
	
	var arrColor;

	function saveChange(parkId) {
		var newColorSet;
		
		arrColor[parkId] = Math.abs(arrColor[parkId]-1) ;
		//alert(arrColor[parkId]);
		
		newColorSet = arrColor[0] + "|" + arrColor[1] + "|" +arrColor[2] + "|" +arrColor[3];
		
		//alert(newColorSet);
		
		loadLadyParkData(newColorSet);
	}
	
	
	 function loadLadyParkData(newColorSet)
     {
       var xmlhttp;
       var url="LadyParkAPI.jsp";
       if ( newColorSet != null) {
    	   url += "?LadyParkDB=" + newColorSet;
       }
       
       if (window.XMLHttpRequest)
       {
           xmlhttp=new XMLHttpRequest();
       }
       else
       {
           xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
       }
       xmlhttp.onreadystatechange=function()
       {
           if (xmlhttp.readyState==4 && xmlhttp.status==200)
           {
               //document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
               setColor(xmlhttp.responseText.trim());
           }
       }

       xmlhttp.open("GET", url, true);
       xmlhttp.send();
	}
	
	function setColor(colorSet) {
		//alert(colorSet);
		arrColor = colorSet.split("|");


			if (arrColor[0] == GOGREEN) {
				document.getElementById("Park1").style.backgroundColor = GOGREENCOLOR;
			} 
			else {
				document.getElementById("Park1").style.backgroundColor = KITTYPINKCOLOR;
			}
			if (arrColor[1] == GOGREEN) {
				document.getElementById("Park2").style.backgroundColor = GOGREENCOLOR;
			} 
			else {
				document.getElementById("Park2").style.backgroundColor = KITTYPINKCOLOR;
			}
			if (arrColor[2] == GOGREEN) {
				document.getElementById("Park3").style.backgroundColor = GOGREENCOLOR;
			} 
			else {
				document.getElementById("Park3").style.backgroundColor = KITTYPINKCOLOR;
			}
			if (arrColor[3] == GOGREEN) {
				document.getElementById("Park4").style.backgroundColor = GOGREENCOLOR;
			} 
			else {
				document.getElementById("Park4").style.backgroundColor = KITTYPINKCOLOR;
			}
	
	}
	 
	loadLadyParkData();
	
	
</script>
</head>
<body>	
	<div style="height:200px;width:400px;text-align:center;position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;

    margin: auto;">
		<div id="Park1" onClick="saveChange(0);"></div>
		<div id="Park2" onClick="saveChange(1);"></div>
		<div id="Park3" onClick="saveChange(2);"></div>
		<div id="Park4" onClick="saveChange(3);"></div>
	</div>
</body>
</html>