package kz.bitlab.techorda.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Tasks;

import java.io.IOException;

@WebServlet(value = "/save-task")
public class SavePageServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("taskId"));
        String name = request.getParameter("taskName");
        String description = request.getParameter("taskDesc");
        String deadline = request.getParameter("taskDeadline");
        String status = request.getParameter("task");

        Tasks task = DBManager.getTask(id);

        if (task != null) {
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(deadline);
            if (status.equals("NO")) {
                task.setStasus(false);
            } else {
                task.setStasus(true);
            }
            DBManager.updateTask(task);
            response.sendRedirect("/details?task_id=" + id);
        } else {
            response.sendRedirect("/home");
        }


    }
}
