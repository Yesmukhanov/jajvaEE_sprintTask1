<form>
<div class="row">
    <div class="col-6 mx-auto">
        <div class="row">
            <div class="col-12">
                <label>Name: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <input type="text" class="form-control col-form-label-lg" value="<%=tasks.getName()%>" placeholder="Name...">
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <label>Description: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <textarea class="form-control col-form-label-lg" style="height: 150px"><%=tasks.getDescription()%></textarea>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <label>Deadline: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <input type="date" class="form-control col-form-label-lg" value="<%=tasks.getDeadlineDate()%>">
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <label>Completed: </label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <select class="form-control" name="completed">
                    <option selected>NO</option>
                    <option>YES</option>
                </select>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <button class="btn-primary btn-lg">Save</button>
                </form>
            </div>
        </div>
    </div>



    <%--                        <div class="row mt-3">--%>
    <%--                            <div class="col-12">--%>
    <%--                                <button type="button" class="btn btn-primary  btn-sm" data-bs-toggle="modal" data-bs-target="#editTask">Edit Task</button>--%>
    <%--                                <div class="modal fade" id="EditTask" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
    <%--                                    <div class="modal-dialog modal-lg">--%>
    <%--                                        <div class="modal-content">--%>
    <%--                                            <div class="modal-header">--%>
    <%--                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Add New Task</h1>--%>
    <%--                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
    <%--                                            </div>--%>
    <%--                                            <div class="modal-body">--%>
    <%--                                                <form action="/save-task" method="post">--%>
    <%--                                                    <div class="row">--%>
    <%--                                                        <div class="col-12">--%>
    <%--                                                            <label>Name: </label>--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-12">--%>
    <%--                                                            <input type="text" class="form-control col-form-label-lg" name="taskName" placeholder="Name..." value="<%=tasks.getName()%>">--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-12">--%>
    <%--                                                            <label>Description: </label>--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-12 d-block">--%>
    <%--                                                            <textarea type="text" class="form-control col-form-label-lg" name="taskDesc" placeholder="Description" style="height: 150px"><%=tasks.getDescription()%></textarea>--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-12">--%>
    <%--                                                            <label>Deadline: </label>--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-12">--%>
    <%--                                                            <input type="date" class="form-control col-form-label-lg" name="taskDeadline" value="<%=tasks.getDeadlineDate()%>">--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-12">--%>
    <%--                                                            <label>Completed: </label>--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-12">--%>
    <%--                                                            <select class="form-control" name="completed">--%>
    <%--                                                                <option  selected="<%=(!tasks.isStasus() ? "selected" : "")%>">NO</option>--%>
    <%--                                                                <option value="YES" selected="<%=(!tasks.isStasus() ? "selected" : "")%>">YES</option>--%>
    <%--                                                            </select>--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>

    <%--                                                    <div class="row mt-3">--%>
    <%--                                                        <div class="col-10">--%>
    <%--                                                            <button class="btn-dark">Save</button>--%>
    <%--                                                        </div>--%>
    <%--                                                    </div>--%>
    <%--                                                </form>--%>
    <%--                                            </div>--%>
    <%--                                            <div class="modal-footer">--%>
    <%--                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
    <%--                                            </div>--%>
    <%--                                        </div>--%>
    <%--                                    </div>--%>
    <%--                                </div>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
