<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
  
Connection conn=connection.getConnection();
PreparedStatement pstmt=conn.prepareStatement("select * from table1");
ResultSet rs=pstmt.executeQuery();
int i=0;
while(rs.next()) {
	i++;
%>

<%=rs.getString(1) %>

<%
 }%> 

</body>
</html>