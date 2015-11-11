<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head><title>JSP에서 초기 파라미터 값 읽어오기</title></head>
<body>
<%!
	String emailHost=null;
	String webMaster=null;

	public void jspInit(){
		ServletConfig myConfig = getServletConfig();
		emailHost = myConfig.getInitParameter("emailHost");
		webMaster = myConfig.getInitParameter("webMaster");
	}
%>
<table border="1">
<tr>
<td>email server</td>
<td><%=emailHost%></td>
</tr>
<tr>
<td>WebMaster</td>
<td><%=webMaster%></td>
</tr>
</table>
E-mail: <%=config.getInitParameter("e-mail")%>
</body>
</html>