<%--
  Created by IntelliJ IDEA.
  User: nero
  Date: 2018/9/28
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
    <s:head/>
</head>
<body>
<s:form action="useradd">
    <s:textfield name="user.id" label="your id"/>
    <s:textfield name="user.userName" label="your userName"/>
    <s:textfield name="user.nickName" label="your nickName"/>
    <s:textfield name="user.age" label="your age"/>
    <s:textfield name="user.qq" label="your qq"/>
    <s:submit value="注册"/>
</s:form>
</body>
</html>
