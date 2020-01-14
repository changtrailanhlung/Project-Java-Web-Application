/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseCRUD;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author lehon
 */
public class BlogPostDTO implements Serializable {

    private int ID;
    private String Tittle, Detail, Author, Topic;
    private String DateCreate, DateUpdate;
    private boolean Active = true;

    public BlogPostDTO(String Tittle, String Detail, String Author, String Topic, String DateCreate, String DateUpdate) {
        this.Tittle = Tittle;
        this.Detail = Detail;
        this.Author = Author;
        this.Topic = Topic;
        this.DateCreate = DateCreate;
        this.DateUpdate = DateUpdate;
    }

    public BlogPostDTO(int ID, String Tittle, String Detail, String Author, String Topic, String DateCreate, String DateUpdate) {
        this.ID = ID;
        this.Tittle = Tittle;
        this.Detail = Detail;
        this.Author = Author;
        this.Topic = Topic;
        this.DateCreate = DateCreate;
        this.DateUpdate = DateUpdate;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTittle() {
        return Tittle;
    }

    public void setTittle(String Tittle) {
        this.Tittle = Tittle;
    }

    public String getDetail() {
        return Detail;
    }

    public void setDetail(String Detail) {
        this.Detail = Detail;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String Author) {
        this.Author = Author;
    }

    public String getTopic() {
        return Topic;
    }

    public void setTopic(String Topic) {
        this.Topic = Topic;
    }

    public String getDateCreate() {
        return DateCreate;
    }

    public void setDateCreate(String DateCreate) {
        this.DateCreate = DateCreate;
    }

    public String getDateUpdate() {
        return DateUpdate;
    }

    public void setDateUpdate(String DateUpdate) {
        this.DateUpdate = DateUpdate;
    }

    public boolean isActive() {
        return Active;
    }

    public void setActive(boolean Active) {
        this.Active = Active;
    }

}
