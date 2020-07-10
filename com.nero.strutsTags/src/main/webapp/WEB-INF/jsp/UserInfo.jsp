<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: nero
  Date: 2018/9/28
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Info</title>
</head>
<body>
<h5>your id <s:property value="user.id"/></h5>
<h5>your userName <s:property value="user.userName"/></h5>
<h5>your nickName <s:property value="user.nickName"/></h5>
<h5>your age <s:property value="user.age"/></h5>
<h5>your qq <s:property value="user.qq"/></h5>
</body>
</html>
