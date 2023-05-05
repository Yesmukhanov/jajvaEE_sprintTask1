package kz.bitlab.techorda.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBConnection;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Tasks;

import java.io.IOException;

@WebServlet(value = "/add-task")
public class AddTaskServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("taskName");
        String desc = request.getParameter("taskDesc");
        String deadline = request.getParameter("taskDeadline");

        Tasks task = new Tasks();
        task.setName(name);
        task.setDescription(desc);
        task.setDeadlineDate(deadline);
        DBConnection.addTask(task);

        response.sendRedirect("/home");
    }
}
