<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import = "java.io.*" %>
<%
out.print("<h2>" + request.getContentType() + "</h2>");

InputStream ins = request.getInputStream();
int data = -1;
while((data=ins.read()) != -1){
	out.print((char)data);
}
%>