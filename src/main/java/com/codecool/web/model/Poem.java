package com.codecool.web.model;

public class Poem extends AbstractModel {

    private int userId;
    private String title;
    private String content;
    
    public Poem(int id, int userId, String title, String content) {
        super(id);
        this.userId = userId;
        this.title = title;
        this.content = content;
    }
    
    public int getUserId() {
        return userId;
    }
    
    public String getTitle() {
        return title;
    }
    
    public String getPoem() {
        return content;
    }
}
