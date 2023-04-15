
<form action="/add-task" method="post">
    <div class="row">
        <div class="col-12">
            <label>Name: </label>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <input type="text" class="form-control col-form-label-lg" name="taskName" placeholder="Name...">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Description: </label>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12 d-block">
            <textarea type="text" class="form-control col-form-label-lg" name="taskDesc" placeholder="Description" style="height: 150px"></textarea>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Deadline: </label>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <input type="date" class="form-control col-form-label-lg" name="taskDeadline">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-10">
            <button class="btn btn-primary btn-close">Add Task</button>
        </div>
    </div>

</form>