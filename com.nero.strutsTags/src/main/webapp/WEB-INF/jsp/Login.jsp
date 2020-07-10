<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        function refresh() {
            //IE存在缓存,需要new Date()实现更换路径的作用
            document.getElementById("image").src = "createImageAction.action?+ Math.random()" + new Date();
        }
    </script>
    <title>登陆页面</title>
</head>
<body>
<h3>用户登录</h3>
<s:form action="login.action" method="post" name="code">
    <s:textfield name="user.userName" key="user"/>
    <s:textfield name="user.pw" key="pw"/><br>
    <s:textfield name="checkCode" maxlength="4" label="验证码"/>
    <span>
        验证码：<img id="image" border="0" onclick="refresh()" src="createImageAction.action" title="看不清，换一张">
    </span>
    <div>
        <s:fielderror cssStyle="color:red"/>
    </div>
    <s:submit value="登录"/>
    <s:reset value="重新输入"/>
    <a href="adduser">尚未注册，点击注册</a>
</s:form>
</body>
</html>
