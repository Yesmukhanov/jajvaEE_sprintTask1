package kz.bitlab.techorda.db;

import java.util.ArrayList;
import java.util.HashMap;

public class DBManager {
    private static final ArrayList<Tasks> tasks1 = new ArrayList<>();
    private static long id = 2;

    static {
        tasks1.add(new Tasks(1, "Dauren", "Yesmukhanov", "21.02.2022"));
    }


    public static void addTask(Tasks task) {
        task.setId(id++);
        tasks1.add(task);
    }

    public static Tasks getTask(long id) {

        return tasks1.
                stream().
                filter(tasks -> tasks.getId() == id).
                findFirst().
                orElse(null);
    }

    public static ArrayList<Tasks> getAllTasks() {
        return tasks1;
    }

    public static void deleteTask(long id) {
        for (int i = 0; i < tasks1.size(); i++){
            if (tasks1.get(i).getId() == id){
                tasks1.remove(i);
                break;
            }
        }
    }

    public static void updateTask(Tasks task) {
        for (int i = 0; i < tasks1.size(); i++) {
            if (tasks1.get(i).getId() == task.getId()) {
                tasks1.set(i, task);
                break;
            }
        }
    }
}
