<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ page import="java.sql.*" %>
<%
	Statement stmt = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/todos?characterEncoding=utf8&serverTimezone=UTC", "root", "cs1234");
	String sql = "delete from todo";  
	stmt = conn.createStatement();
	stmt.executeUpdate(sql);
	sql = "alter table todo auto_increment = 1";  
	stmt.executeUpdate(sql);
	
	response.sendRedirect("todo.jsp");
%>