<%--
  Created by IntelliJ IDEA.
  User: nero
  Date: 2018/9/28
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>struts2</title>
</head>
<body>
<h1>Welcome To Struts 2!</h1>
<h2><a href="<s:url action="/helloworld"/>">helloworld</a> </h2>
<h2><a href="/helloworld">helloworld</a> </h2>
<s:form action="helloworld!gerErr">
    <s:textfield name="userName" label="your name"/>
    <s:submit value="submit"/>
</s:form>
</body>
</html>
