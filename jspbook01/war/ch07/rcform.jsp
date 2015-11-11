<%@ page contentType="text/html;charset=utf-8" %>
<%
request.setCharacterEncoding("utf-8");
%>
<html>
<head><title>reform_jsp</title></head>
<body>
당신의 관심분야와 결혼여부는 다음과 같습니다.<br/>
<%
String[] interest = request.getParameterValues("cp");
for(int i=0; i< interest.length-1;i++){
%>
<b><%=interest[i]%></b>,
<%}%>
<br><%=interest[interest.length-1]%></b>과
<b><%=request.getParameter("M_Status")%></b>
</body>
</html>