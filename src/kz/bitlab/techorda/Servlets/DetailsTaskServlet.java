package kz.bitlab.techorda.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Tasks;

import java.io.IOException;
@WebServlet(value = "/details")
public class DetailsTaskServlet  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            long id = Long.parseLong(request.getParameter("task_id"));
            Tasks tasks = DBManager.getTask(id);
            request.setAttribute("tasks", tasks);
            request.getRequestDispatcher("/editPage.jsp").forward(request, response  );
     }
}
