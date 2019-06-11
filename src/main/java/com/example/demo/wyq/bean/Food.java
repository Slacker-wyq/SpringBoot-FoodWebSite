package com.example.demo.wyq.bean;

import javax.persistence.*;
import java.util.Set;


@Entity
@Table(name="tb_food")
public class Food {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String foodname;
    private String address;
    private String phonto;
    private String type;
    private String date;
    private String publisher;
    private String business;
    private int score;
    private int browsenumber;
    private String cookType;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)
    private Set<Comment>comments;

    @ManyToOne
    private User user;
    public Food(){}

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<Comment> getComments() {
        return comments;
    }

    public void setComments(Set<Comment> comments) {
        this.comments = comments;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public int getBrowsenumber() {
        return browsenumber;
    }

    public void setBrowsenumber(int browsenumber) {
        this.browsenumber = browsenumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String getPhonto() {
        return phonto;
    }

    public void setPhonto(String phonto) {
        this.phonto = phonto;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getBusiness() {
        return business;
    }

    public void setBusiness(String business) {
        this.business = business;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }



    public String getCookType() {
        return cookType;
    }

    public void setCookType(String cookType) {
        this.cookType = cookType;
    }


}
