<%--
  Created by IntelliJ IDEA.
  User: nero
  Date: 2018/9/30
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>异常</title>
</head>
<body>
<h2>异常信息</h2><s:property value="exception"/>
<h2>异常信息</h2><s:property value="exception.message"/>
<h2>异常详情</h2><s:property value="exceptionStack"/>
</body>
</html>
