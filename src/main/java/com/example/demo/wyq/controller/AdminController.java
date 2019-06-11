package com.example.demo.wyq.controller;

import com.example.demo.wyq.bean.Business;
import com.example.demo.wyq.bean.Comment;
import com.example.demo.wyq.bean.Food;
import com.example.demo.wyq.bean.User;
import com.example.demo.wyq.service.BusinessService;
import com.example.demo.wyq.service.CommentService;
import com.example.demo.wyq.service.FoodService;
import com.example.demo.wyq.service.UserService;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Set;

@Controller
public class AdminController {
    @Resource
    private FoodService foodService;
    @Resource
    private CommentService commentService;
    @Resource
    private BusinessService businessService;
    @Resource
    private UserService userService;
    int allFoodCount,skFoodCount,qcFoodCount,lyFoodCount,hxFoodCount;
    @RequestMapping(value = "adminmain")
    public String adminMain(HttpServletRequest request){
        if (request.getSession().getAttribute("username")!=null) {
            foodCount(request);
            List<Food> foods=foodService.findAll();
            request.getSession().putValue("foods",foods);
            return "admin-main";
        }
        return "login";
    }
    @RequestMapping(value = "adminbusiness")
    public String adminBusiness(HttpServletRequest request){
        if (request.getSession().getValue("username")!=null) {
            List<Business>businesses=businessService.findBusinessByVerification("true");
            request.getSession().putValue("businesses",businesses);
            return "admin-business";
        }
        return "login";
    }
    @RequestMapping(value = "adminbusinesshandle")
    public String adminbusinessSuccess(HttpServletRequest request){
        List<Business>businesses=businessService.findBusinessByVerification("false");
        request.getSession().putValue("businesses",businesses);
        return "admin-businessSuccess";
    }
    @RequestMapping(value = "adminbusinesshandleSuccess")
    public String adminbusinessSuccess(@Param("id")String id){
        int businessid=Integer.valueOf(id);
        Business business=businessService.findBusinessById(businessid);
        String username=business.getUsername();
        String password=business.getPassword();
        String email=business.getEmail();
        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setType("business");
        userService.save(user);
        business.setVerification("true");
        businessService.save(business);

        return "redirect:/adminbusinesshandle";
    }
    @RequestMapping(value = "adminbusinesshandleFaile")
    public String adminbusinesshandleFaile(@Param("id")String id){
        int businessid=Integer.valueOf(id);
        businessService.deleteBusinessById(businessid);
        return "redirect:/adminbusinesshandle";
    }

    @RequestMapping(value = "adminbusinessDetail")
    public String adminbusinessDetail(@Param("id")String id,HttpServletRequest request){
        int businessid=Integer.valueOf(id);
        Business business=businessService.findBusinessById(businessid);
        Set<Food>foods=business.getFoods();
        request.getSession().putValue("business",business);
        request.getSession().putValue("foods",foods);
        return "businessDetail";
    }

    @RequestMapping(value = "adminbusinessDelete")
    public String adminbusinessDelete(@Param("id")String id){
        int businessid=Integer.valueOf(id);
        Business business=businessService.findBusinessById(businessid);
        Set<Food>foods=business.getFoods();
        for(Food food:foods){
            foodService.deleteFoodById(food.getId());
        }
        businessService.deleteBusinessById(businessid);

        return "redirect:/adminbusiness";

    }
    @RequestMapping(value = "admincomments")
    public String adminComments(HttpServletRequest request){
        if (request.getSession().getAttribute("username")!=null) {
            List<Comment>comments=commentService.findAll();
            request.getSession().putValue("comments",comments);
            return "admin-comments";
        }
        return "login";
    }
    @RequestMapping(value = "adminfoods")
    public String adminFood(HttpServletRequest request){
        if (request.getSession().getAttribute("username")!=null) {
            List<Food> foods=foodService.findAll();
            request.getSession().putValue("foods",foods);
            return "admin-foods";
        }
        return "login";
    }
    @RequestMapping(value = "adminfooddelete")
    public String foodDelete(@Param("id")String  id) {
        int foodid = Integer.valueOf(id);
        foodService.deleteFoodById(foodid);
        return "redirect:/adminfoods";
    }


    public void foodCount(HttpServletRequest request){
        allFoodCount=foodService.allFood();
        skFoodCount=foodService.typeFood("烧烤");
        qcFoodCount=foodService.typeFood("青菜");
        lyFoodCount=foodService.typeFood("冷饮");
        hxFoodCount=foodService.typeFood("海鲜");
        DecimalFormat df = new DecimalFormat("0.00");
        df.setRoundingMode(RoundingMode.HALF_UP);
        String skFood=df.format((double) skFoodCount/allFoodCount*100);
        String qcFood=df.format((double) qcFoodCount/allFoodCount*100);
        String lyFood=df.format( (double) lyFoodCount/allFoodCount*100);
        String hxFood=df.format((double) hxFoodCount/allFoodCount*100);
        request.getSession().putValue("adllFoodCount",allFoodCount);
        request.getSession().putValue("skFoodCount",skFoodCount);
        request.getSession().putValue("qcFoodCount",qcFoodCount);
        request.getSession().putValue("lyFoodCount",lyFoodCount);
        request.getSession().putValue("hxFoodCount",hxFoodCount);
        request.getSession().putValue("hxFood",hxFood);
        request.getSession().putValue("skFood",skFood);
        request.getSession().putValue("qcFood",qcFood);
        request.getSession().putValue("lyFood",lyFood);
    }

}
