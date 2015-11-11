<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="taco.*" %>
<html>
<head><title>레퍼런스 데이터 타입 테스트</title></head>
<body>
<%
Point p1 = new Point();
Point p2 = new Point(10, 20);
%>
<span>The number of Point instances: <%=Point.getInstanceNum()%></span><br/>

p1's x: <%=p1.getX()%><br/>
p1's y: <%=p1.getY()%><br/>
p2's x: <%=p1.getX()%><br/>
p2's y: <%=p1.getY()%><br/>

<%
p1.move(100, 200);
%>

p1's x: <%=p1.getX()%><br/>
p1's y: <%=p1.getY()%><br/>
</body>
</html>

