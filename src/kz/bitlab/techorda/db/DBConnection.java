package kz.bitlab.techorda.db;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {

    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/orda_db",
                    "root",
                    ""
            );
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Tasks> getTasks(){
        ArrayList<Tasks> tasks = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement
                    ("SELECT * FROM tasks");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                Tasks tasks1 = new Tasks();
                tasks1.setId(resultSet.getInt("id"));
                tasks1.setName(resultSet.getString("name"));
                tasks1.setDeadlineDate(resultSet.getString("deadline"));
                tasks1.setDescription(resultSet.getString("description"));
                tasks1.setStasus(resultSet.getBoolean("completed"));

                tasks.add(tasks1);
            }
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return tasks;
    }

    public static void addTask(Tasks tasks){
        try {
            PreparedStatement statement = connection.prepareStatement
                    ("INSERT INTO tasks (name, description, deadline, completed) " +
                    "VALUES (?, ?, ?, ?)");

            statement.setString(1, tasks.getName());
            statement.setString(2, tasks.getDescription());
            statement.setString(3, tasks.getDeadlineDate());
            statement.setBoolean(4, tasks.isStasus());

            statement.executeUpdate();
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public static Tasks getTask(int id){
        Tasks tasks = null;
        try {
            PreparedStatement statement = connection.prepareStatement
                    ("select * from tasks where id = ?");

            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                tasks = new Tasks();
                tasks.setId(resultSet.getInt("id"));
                tasks.setName(resultSet.getString("name"));
                tasks.setDeadlineDate(resultSet.getString("deadline"));
                tasks.setDescription(resultSet.getString("description"));
                tasks.setStasus(resultSet.getBoolean("completed"));
            }
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return tasks;
    }

    public static void updateTask(Tasks task){
        try {
            PreparedStatement statement = connection.prepareStatement
                    ("UPDATE tasks " +
                            "SET " +
                            "name = ?, " +
                            "description = ?, " +
                            "deadline = ?, " +
                            "completed = ? " +
                            "where id = ?");

            statement.setString(1, task.getName());
            statement.setString(2, task.getDescription());
            statement.setString(3, task.getDeadlineDate());
            statement.setBoolean(4, task.isStasus());
            statement.setInt(5, (int)task.getId());

            statement.executeUpdate();
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }

    }

    public static void deleteTask(int id){
        try {
            PreparedStatement statement = connection.prepareStatement("DELETE FROM task WHERE id = ?");
            statement.setInt(1, id);
            statement.executeUpdate();
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }

    }

    public static User getUser(String email){
        User user = null;
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "SELECT  * FROM users where email = ?");
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                user = new User();
                user.setId(resultSet.getLong("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFull_name(resultSet.getString("full_name"));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }

}