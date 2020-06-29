<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit User Information</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <div class="container" style="width: 400px;">
        <h3 style="text-align: center;">Edit User Information</h3>
        <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">
            <%--    隐藏域 提交id     --%>
            <input type="hidden" name="id" value="${user.id}">
          <div class="form-group">
            <label for="name">Name: </label>
            <input type="text" class="form-control" id="name" name="name" value="${user.name}" readonly="readonly" placeholder="Name" />
          </div>

          <div class="form-group">
            <label>Gender: </label>
              <c:if test="${user.gender == 'Male'}">
                  <input type="radio" name="gender" value="Male" checked />Male
                  <input type="radio" name="gender" value="Female"  />Female
              </c:if>

              <c:if test="${user.gender == 'Female'}">
                  <input type="radio" name="gender" value="Male"  />Male
                  <input type="radio" name="gender" value="Female" checked />Female
              </c:if>

          </div>

          <div class="form-group">
            <label for="age">Age: </label>
            <input type="text" class="form-control" value="${user.age}" id="age" name="age" placeholder="Age" />
          </div>

          <div class="form-group">
            <label for="address">City: </label>
             <select name="address" class="form-control" >
                 <c:if test="${user.address == 'Toronto'}">
                     <option value="Toronto" selected>Toronto</option>
                     <option value="Vancouver">Vancouver</option>
                     <option value="Montreal">Montreal</option>
                 </c:if>

                 <c:if test="${user.address == 'Vancouver'}">
                     <option value="Toronto">Toronto</option>
                     <option value="Vancouver" selected>Vancouver</option>
                     <option value="Montreal">Montreal</option>
                 </c:if>

                 <c:if test="${user.address == 'Montreal'}">
                     <option value="Toronto">Toronto</option>
                     <option value="Vancouver">Vancouver</option>
                     <option value="Montreal" selected>Montreal</option>
                 </c:if>

            </select>
          </div>

          <div class="form-group">
            <label for="cell">Cell Phone Number：</label>
            <input type="text" class="form-control" value="${user.cell}" name="cell" placeholder="Cell Phone Number"/>
          </div>

          <div class="form-group">
            <label for="email">Email：</label>
            <input type="text" class="form-control" value="${user.email}" name="email" placeholder="Email"/>
          </div>

             <div class="form-group" style="text-align: center">
                <input class="btn btn-primary" type="submit" value="Submit" />
                <input class="btn btn-default" type="reset" value="Reset" />
                <input class="btn btn-default" type="button" value="Back"/>
             </div>
        </form>
        </div>
    </body>
</html>