<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tocat-loadgen Application</title>
</head>
<body>
	<h1>Welcome to Tomcat LoadGen Application</h1>
	<h2>
		IP Address  : 

		<%@ page import="java.net.*"%>

		<%
		    String ipValue = "error";
           
            try {
                InetAddress inetAddress;
                ipValue = InetAddress.getLocalHost().getHostAddress();
               } catch (UnknownHostException e) {

                e.printStackTrace();
            }
            %>
		<%=ipValue %>
	</h2>
	<pre>
		System Properties
		---------------------------------------------------------------------
		Java version :
		<%= System.getProperty("java.version")%>

		<br>Java home :
		<%= System.getProperty("java.home")%>

		<br>user name :
		<%= System.getProperty("user.name")%>

		<br>OS name :
		<%= System.getProperty("os.name")%>
		
		<br>OS Arch :
		<%= System.getProperty("os.arch")%>
		
		<br>user dir :
		<%= System.getProperty("user.dir")%>
	</pre>
</body>
</html>
