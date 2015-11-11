<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
<body>
<center>
<%
	String readResourcePath="/ch08/count.txt";
	String writeResourcePath = readResourcePath;
	String realReadPath=application.getRealPath(readResourcePath);
	String realWritePath=application.getRealPath(writeResourcePath);
	BufferedReader br = null;
	String count = null;

	try{
		br = new BufferedReader(new FileReader(realReadPath));
		count = br.readLine().trim();
		br.close();

		if(session.isNew()){
			pr = new PrintWriter (new FileWriter(realWritePath));
			int num = Integer.parseInt(count);
			pr.println(num+1);
			pr.close();

		}
	} catch(IOException ex){
		out.println("예외 발생: " + ex.getMessage());
	}
%>
방문자수 : <%=count%>명
</center>
</body>
</html>