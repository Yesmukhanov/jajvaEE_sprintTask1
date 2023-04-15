<%@ page import="kz.bitlab.techorda.db.Tasks" %>
<%@ page import="kz.bitlab.techorda.db.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 10.04.23
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
    <div class="container mt-5">
        <%
            Tasks tasks = (Tasks) (request.getAttribute("tasks"));
            if (tasks != null) {
        %>
        <div class="row">
            <div class="col-12">
                <label>Name: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <input type="text" class="form-control col-form-label-lg" name="taskName" placeholder="Name..." readonly
                       value="<%=tasks.getName()%>">
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <label>Description: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12 d-block">
                <textarea type="text" class="form-control col-form-label-lg" name="taskDesc" readonly
                          placeholder="Description" style="height: 150px"><%=tasks.getDescription()%></textarea>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <label>Deadline: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <input type="date" class="form-control col-form-label-lg" name="taskDeadline" readonly
                       value="<%=tasks.getDeadlineDate()%>">
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <label>Completed: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <select class="form-control" disabled="disabled">
                    <option value="NO" <%=(tasks.isStasus()) ? "" : "selected"%>>NO</option>
                    <option value="YES" <%=(tasks.isStasus()) ? "selected" : ""%>>YES</option>
                </select>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <button type="button" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#editTask">Edit</button>
                <button type="button" class="btn btn-danger btn-lg" data-bs-toggle="modal" data-bs-target="#deleteTask">Delete</button>

                <div class="modal fade" id="deleteTask" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel1">Confirm Delete </h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <h5 class="text-center">Are you sure?</h5>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary btn-lg" data-bs-dismiss="modal">Close</button>
                                <form action="/delete-task" method="post">
                                    <input type="hidden" value="<%=tasks.getId()%>" name="id">
                                    <button class="btn btn-primary btn-lg">Delete</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="editTask" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="/save-task" method="post">
                                    <input type="hidden" name="taskId" value="<%=tasks.getId()%>">
                                    <div class="row">
                                        <div class="col-12">
                                            <label>Name: </label>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <input type="text" class="form-control col-form-label-lg" name="taskName"
                                                   placeholder="Name..." value="<%=tasks.getName()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>Description: </label>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12 d-block">
                                            <textarea type="text" class="form-control col-form-label-lg" name="taskDesc"
                                                      placeholder="Description"
                                                      style="height: 150px"><%=tasks.getDescription()%></textarea>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>Deadline: </label>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <input type="date" class="form-control col-form-label-lg"
                                                   name="taskDeadline" value="<%=tasks.getDeadlineDate()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>Completed: </label>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <select class="form-control" name="task">
                                                <option value="NO" <%=(tasks.isStasus()) ? "" : "selected"%>>NO</option>
                                                <option value="YES" <%=(tasks.isStasus()) ? "selected" : ""%>>YES
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <button class="btn-success btn-lg">Save</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%
        } else {
        %>
        <h3 class="text-center">Book Not Found</h3>
        <%
            }
        %>

    </div>
</div>
</body>
</html>
