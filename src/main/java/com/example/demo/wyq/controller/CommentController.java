package com.example.demo.wyq.controller;

import com.example.demo.wyq.bean.Comment;
import com.example.demo.wyq.bean.Food;
import com.example.demo.wyq.bean.User;
import com.example.demo.wyq.service.CommentService;
import com.example.demo.wyq.service.FoodService;
import com.example.demo.wyq.service.UserService;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
public class CommentController {
    @Resource
    private UserService userService;
    @Resource
    private CommentService commentService;
    @Resource
    private FoodService foodService;
    @RequestMapping(value = "addComment")
    public String addComment(){
        return "foodcomment";
    }

    @RequestMapping(value = "addCommentSuccess")
    public String addCommentSuccess(Comment comment, HttpServletRequest request){

        if (request.getSession().getAttribute("username")!=null){
            String username=request.getSession().getAttribute("username").toString();
            User user=userService.findByUsername(username).get(0);
            Food food=(Food)request.getSession().getAttribute("food");
            comment.setUser(user);
            comment.setFood(food);
            commentService.save(comment);
            Set<Comment> comments=food.getComments();
            comments.add(comment);
            food.setComments(comments);
            foodService.save(food);
            return "foodDetail";
        }else {return "redirect:/main";}

    }
    @RequestMapping(value = "adminCommentDelete")
    public String adminCommentDelete(@Param("id")String id){
        int commentid = Integer.valueOf(id);
        commentService.deleteCommentById(commentid);

        return "redirect:admincomments";
    }
}
