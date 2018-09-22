<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>九大内置对象四大范围</title>
</head>
<body>
<h2>四大范围</h2>
<ol>
	<li>pageContext:在本页上可以取到设置的值</li>
	<%
		//设置两page范围的数据
		pageContext.setAttribute("name", "xuyunfei");
	%>
	<%
		//取值
		String name1=(String)pageContext.getAttribute("name");
	%>
	<font size="12" color="red">姓名：<%=name1 %></font>
<hr>

	<li>request:只在一个请求内有效，接受到<a href="requestScope.jsp">
		requestScope.jsp
	</a>传过来的信息</li>
	<%String name2=(String)request.getAttribute("name"); %>
	<font size="12" color="red">姓名：<%=name2 %></font>
	
	<li>session:一次会话中有效，不关闭浏览器，重新输入网址还可以得到</li>
	<%
		//设置两session范围的数据
		session.setAttribute("name", "xuyunfei");
	%>
	<%
		//取值
		String name3=(String)session.getAttribute("name");
	%>
	<font size="12" color="red">姓名：<%=name3 %></font>
	
<hr>
	<li>application:保存在服务器中，在服务器没关闭之前一直存在，换个浏览器也可以访问</li>
	<%
		//设置两application	范围的数据
		application.setAttribute("name", "xuyunfei");
	%>
	<%
		//取值
		String name4=(String)application.getAttribute("name");
	%>
	<font size="12" color="red">姓名：<%=name4 %></font>
</ol>
<hr />
<h2>获取头部信息：引入Enumeration类，在util包里面</h2>
<%
	// 获取头信息
	Enumeration enu=request.getHeaderNames();
	while(enu.hasMoreElements()){
		String headerName=(String)enu.nextElement();
		String headerValue=request.getHeader(headerName);
%>
	<h4><%=headerName %>&nbsp;<%=headerValue %></h4>

	<%} %>

</body>
</html>