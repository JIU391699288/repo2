<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap模板</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">显示所有用户</h3>
    <table border="1" class="table table-bordered table-hover">
        <tr class="success">
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>籍贯</th>
            <th>QQ</th>
            <th>邮箱</th>
            <th>操作</th>
        </tr>

        <%--<tr>--%>
            <%--<td>1</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>男</td>--%>
            <%--<td>20</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>44444222</td>--%>
            <%--<td>zs@qq.com</td>--%>
            <%--<td><a class="btn btn-default btn-sm" href="修改联系人.html">修改</a>&nbsp;<a class="btn btn-default btn-sm" href="修改联系人.html">删除</a></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>2</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>男</td>--%>
            <%--<td>20</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>44444222</td>--%>
            <%--<td>zs@qq.com</td>--%>
            <%--<td><a class="btn btn-default btn-sm" href="修改联系人.html">修改</a>&nbsp;<a class="btn btn-default btn-sm" href="修改联系人.html">删除</a></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>3</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>男</td>--%>
            <%--<td>20</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>44444222</td>--%>
            <%--<td>zs@qq.com</td>--%>
            <%--<td><a class="btn btn-default btn-sm" href="修改联系人.html">修改</a>&nbsp;<a class="btn btn-default btn-sm" href="修改联系人.html">删除</a></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>4</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>男</td>--%>
            <%--<td>20</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>44444222</td>--%>
            <%--<td>zs@qq.com</td>--%>
            <%--<td><a class="btn btn-default btn-sm" href="修改联系人.html">修改</a>&nbsp;<a class="btn btn-default btn-sm" href="修改联系人.html">删除</a></td>--%>
        <%--</tr>--%>
        <c:forEach items="${users}" var="user" >
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.sex}</td>
            <td>${user.age}</td>
            <td>${user.address}</td>
            <td>${user.qq}</td>
            <td>${user.email}</td>

            <td><a class="btn btn-default btn-sm" href="/user?method=update1&id=${user.id}">修改</a>&nbsp;
                <a class="btn btn-default btn-sm" href="javascript:void(0)" onclick="f(this,${user.id})">删除</a></td>
        </tr>
        </c:forEach>
        <tr>
            <td colspan="8" align="center"><a class="btn btn-primary" href="${pageContext.request.contextPath }/add.jsp">添加用户</a></td>
        </tr>

    </table>
</div>
</body>
<script>
    function f(obj,id) {
        var msg = confirm("确定删除吗");
        if (msg){
            obj.href="/user?method=delete&id="+id
        }


    }
</script>
</html>
