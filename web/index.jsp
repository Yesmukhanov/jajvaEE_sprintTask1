<%@ page import="kz.bitlab.techorda.db.Tasks" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 10.04.23
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Manager</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp"%>
    <div class="row mt-3">
        <div class="col-12">
            <%@include file="modal.jsp"%>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>DEADLINE</th>
                        <th>Completed</th>
                        <th>Details</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Tasks> list = (ArrayList<Tasks>) (request.getAttribute("tasks"));
                        if (list != null){
                        for (Tasks task : list){
                    %>
                        <tr>
                            <td><%=task.getId()%></td>
                            <td><%=task.getName()%></td>
                            <td><%=task.getDeadlineDate()%></td>
                            <td><%=(task.isStasus() ? "Completed" : "Not Completed") %></td>
                            <td><a class="btn btn-dark" href="/details?task_id=<%=task.getId()%>">Details</a> </td>
                        </tr>
                    <%
                        }
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
