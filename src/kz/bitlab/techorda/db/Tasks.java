package kz.bitlab.techorda.db;

public class Tasks {
    long id;
    String name;
    String description;
    String deadlineDate;
    boolean stasus;

    public Tasks() {

    }

    public Tasks(long id, String name, String description, String deadlineDate) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public boolean isStasus() {
        return stasus;
    }

    public void setStasus(boolean stasus) {
        this.stasus = stasus;
    }
}
