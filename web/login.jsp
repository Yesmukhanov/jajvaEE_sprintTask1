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
        </div>
        <div class="container mt-3">
            <div class="row">
                <div class="col-6 mx-auto">
                    <form action="/login" method="post">
                        <div class="row">
                            <div class="col-12">
                                <label>EMAIL: </label>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <input type="email" class="form-control" name="email" required placeholder="Insert Email">
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <label>PASSWORD: </label>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-12">
                                <input type="password" class="form-control" name="password" required placeholder="Insert Password">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-12">
                                <button class="btn btn-success">SIGN IN</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>
