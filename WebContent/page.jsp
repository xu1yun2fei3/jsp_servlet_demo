<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h2>语法</h2>
	<ol>
		<li>定义全局变量，方法，和类</li>
		<li>定义局部变量，和编写语句</li>
		<li>输出一个具体的变量或者类容</li>
	</ol>
<hr>
<h2>代码实现</h2>
<%!String str="全局变量"; %>

<%! public void func(){
	System.out.print("全局方法");
} %>

<%! class c{
	private int a;
	public void f(){
		System.out.print("全局类");
	}
} %>
<label>输出全局变量：<%=str %></label>
<%
	String name="xuyunfei";
	out.print(name);

%>
<label>输出局部变量：<%=name %></label>


<hr>
<h2>jsp注释：没啥了解一下就可以</h2>
<ol>
	<li>html注释</li>
	<li>jsp注释注释</li>
	<li>html注释</li>
</ol>
<!-- html注释，客户端可见-->
<%--jsp注释 --%>
<hr>


<h2>包含指令:把其他页面的模板元素加载进来</h2>
<ol><li>静态包含:包含html/jsp文件</li>
	<li>动态包含:先处理再编译,一般都是用动态包含</li>
</ol>
<hr>
<%@ include file="commen/head.html" %>
<p>静态包含</p>
<%@ include file="commen/footer.jsp"%>
<hr>
<jsp:include page="commen/head.html"/>
<p>动态包含</p>
<jsp:include page="commen/footer.jsp"/>
	
<hr>
<h2>jsp跳转指令：输入forward.jsp，跳会本页,并且传过来参数,这是服务器端跳转，地址栏不会发生变化</h2>
	姓名：<%=request.getParameter("name") %><br>
	密码：<%=request.getParameter("password") %>
	
</body>
</html>