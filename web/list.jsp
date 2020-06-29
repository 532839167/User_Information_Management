<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>User Information Management System</title>

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

    <script>
        function deleteUser(id){
            // 用户提示
            if (confirm("Delete this user? ")) {
                // 访问路径
                location.href = "${pageContext.request.contextPath}/delUserServlet?id="+id;
            }

        }

    </script>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">User Information List</h3>

    <div style="float: left; margin: 5px;">

        <form class="form-inline">
            <div class="form-group">
                <label for="exampleInputName2">Name</label>
                <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
            </div>
            <div class="form-group">
                <label for="exampleInputAdd2">Address</label>
                <input type="text" class="form-control" id="exampleInputAdd2" placeholder="Toronto">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail2">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form>

    </div>

    <div style="float: right; margin: 5px;">

        <a class="btn btn-primary" href="${pageContext.request.contextPath}add.jsp">Add New User</a>
        <a class="btn btn-primary" href="add.jsp">Delete Selected User</a>

    </div>

    <table border="1" class="table table-bordered table-hover">
        <tr class="success">
            <th><input type="checkbox"></th>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>AGE</th>
            <th>CITY</th>
            <th>PHONE</th>
            <th>EMAIL</th>
            <th>Admin</th>
        </tr>

        <%-- 循环遍历添加每一条信息 --%>
        <c:forEach items="${users}" var="user" varStatus="s">
            <tr>
                <th><input type="checkbox"></th>
                <td>${s.count}</td>
                <td>${user.name}</td>
                <td>${user.gender}</td>
                <td>${user.age}</td>
                <td>${user.address}</td>
                <td>${user.cell}</td>
                <td>${user.email}</td>
                <td><a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/findUserServlet?id=${user.id}">Edit</a>&nbsp;<a class="btn btn-default btn-sm" href="javascript:deleteUser(${user.id});">Delete</a></td>
            </tr>
        </c:forEach>

    </table>

    <div>

        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>

    </div>

</div>
</body>
</html>
