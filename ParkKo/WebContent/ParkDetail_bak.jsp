<%
@ page import java.net.URLDecoder;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ParkKo</title>
<script type='text/javascript' src='Javascript/ParkChange.js'></script>
</head>
<body>
<center>
<form method="post" action="Change.jsp">
      <table>
          <tr>
              <td style="text-align:right">
                  <label for="lblCarNumber">กรุณากรอกทะเบียนทะเบียนรถ : </label>
              </td>
              <td>
                  <label type="" name="lblCarNumber" id="lblCarNumber">-</label>              
              </td>
          </tr>
          <tr>
              <td style="text-align:right">
                  <label for="lblProvince">หมวดจังหวัด : </label>
              </td>
              <td>
                  <label type="" name="lblProvince" id="lblProvince">-</label>                  
              </td>
          </tr>
          <tr>
              <td style="text-align:right">
                  <label for="lblCarIn">เวลารถเข้า : </label>
              </td>
              <td>
                  <label type="" name="lblCarIn"id="lblCarIn">-</label>                  
              </td>
          </tr>
          <tr>
              <td style="text-align:right">
                  <label for="lblCarIn">เวลารถออก : </label>
              </td>
              <td>
                  <label type="" name="lblCarOut" id="lblCarOut">-</label>                  
              </td>
          </tr>
          <tr>
              <td style="text-align:right">
                  <label for="lblPrice">ค่าจอดรถ : </label>
              </td>
              <td>
                  <label type="" name="lblPrice" id="lblPrice">-</label>                  
              </td>
          </tr>
          <tr>
              <td style="text-align:right">
                  <label for="receiveMoney">รับเงิน : </label>
              </td>
              <td>
                  <input type="Text" name="receiveMoney" id="receiveMoney" value="" />                  
              </td>
          </tr>
          <tr>
              <td colspan="2" align="center">
	<br/>
                  <input type="submit" value="คำนวนเงินทอน" />
              </td>
          </tr>
      </table>
</form>
<script>
<%
String data = URLDecoder.decode(request.getParameter("data")); 
%>
displayParkDetail("<%=data%>");
</script>

</center>
</body>
</html>
      