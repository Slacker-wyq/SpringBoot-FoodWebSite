package com.example.demo.wyq.controller;

import com.example.demo.wyq.bean.Business;
import com.example.demo.wyq.bean.Comment;
import com.example.demo.wyq.bean.Food;
import com.example.demo.wyq.service.BusinessService;
import com.example.demo.wyq.service.FoodService;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@Controller
public class FoodController {

    @Resource
    private FoodService foodService;
    @Resource
    private BusinessService businessService;
    //首页
    @RequestMapping(value = "main")
    public String main(HttpServletRequest request){
        List<Food>foods=foodService.findAll();
        request.getSession().putValue("username",null);
        request.getSession().putValue("foods",foods);
        return "main";
    }
    @RequestMapping(value = "backmain")
    public String backMain(HttpServletRequest request){
        List<Food>foods=foodService.findAll();
        request.getSession().putValue("foods",foods);
        return "main";
    }
    //添加美食
    @RequestMapping(value = "foodAdd")
    public String foodAdd(){
        return "foodAdd";
    }
    @RequestMapping(value = "foodAddSuccess")
    public String foodAddSuccess(@RequestParam(value = "file") MultipartFile file,HttpServletRequest request,Food food){

        String username=request.getSession().getAttribute("username").toString();
        food.setPublisher(username);
        if (file.isEmpty()) {
            System.out.println("文件为空空");
        }
        String fileName = file.getOriginalFilename();  // 文件名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));  // 后缀名
        String filePath = "D://temp-rainy//"; // 上传后的路径
        fileName = UUID.randomUUID() + suffixName; // 新文件名
        File dest = new File(filePath + fileName);
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(fileName);
        System.out.println(suffixName);
        food.setPhonto(fileName);
        foodService.save(food);

        return "redirect:foodMyAdd";
    }
    //我的发布
    @RequestMapping(value = "foodMyAdd")
    public String foodMyAdd(HttpServletRequest request){
        String username=request.getSession().getAttribute("username").toString();
        List<Food>foods=foodService.findByPublisher(username);
        request.getSession().putValue("foods",foods);
        return "foodMyAdd";
    }
    @RequestMapping(value = "foodDelete")
    public String foodDelete(@Param("id")String  id){
        int foodid=Integer.valueOf(id);
        foodService.deleteFoodById(foodid);
        System.out.println("删除成功");
        return "redirect:/foodMyAdd";
    }
    //所有美食
    @RequestMapping(value = "foodAll")
    public String foodAll(HttpServletRequest request){
        List<Food>foods=foodService.findAll();
        request.getSession().putValue("foods",foods);
        return "foodALL";
    }

    //美食商家
    @RequestMapping(value = "foodOwer")
    public String foodOwer(HttpServletRequest request){
        List<Business>businesses=businessService.findBusinessByVerification("true");
        request.getSession().putValue("businesses",businesses);
        return "foodOwer";
    }
    @RequestMapping(value = "foodOwerDetail")
    public String foodOwerDetail(@Param("id")String id,HttpServletRequest request){
        int businessid=Integer.valueOf(id);
        Business business=businessService.findBusinessById(businessid);
        Set<Food>foods=business.getFoods();
        request.getSession().putValue("business",business);
        request.getSession().putValue("foods",foods);
        return "businessDetail";
    }
    @RequestMapping(value = "myfoodAdd")
    public String myfoodAdd(@Param("id")String id,HttpServletRequest request){
        int businessid=Integer.valueOf(id);
        request.getSession().putValue("businessid",businessid);
        return "businessMyfoodAdd";
    }
    @RequestMapping(value = "myfoodAddSuccess")
    public String myfoodAddSuccess(@RequestParam(value = "file") MultipartFile file,HttpServletRequest request,Food food,@RequestParam(value = "businessid")String id){
        int businessid=Integer.valueOf(id);
        Business business=businessService.findBusinessById(businessid);
        String username=business.getUsername();
        food.setPublisher(username);
        if (file.isEmpty()) {
            System.out.println("文件为空空");
        }
        String fileName = file.getOriginalFilename();  // 文件名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));  // 后缀名
        String filePath = "D://temp-rainy//"; // 上传后的路径
        fileName = UUID.randomUUID() + suffixName; // 新文件名
        File dest = new File(filePath + fileName);
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(fileName);
        System.out.println(suffixName);
        food.setPhonto(fileName);
        food.setBusiness(business.getName());
        Set<Food>foods=business.getFoods();
        foods.add(food);
        business.setFoods(foods);
        foodService.save(food);
        request.getSession().putValue("username",business.getUsername());
        return "redirect:/businessMyDetail";
    }
    @RequestMapping(value = "businessMyDetail")
    public String businessMyDetail(HttpServletRequest request){
        String username=request.getSession().getValue("username").toString();
        Business business=businessService.findBusinessByUsername(username);
        Set<Food> foods=business.getFoods();
        request.getSession().putValue("business",business);
        request.getSession().putValue("foods",foods);
        return "businessMyDetail";
    }
    @RequestMapping(value = "businessMyfoodDetail")
    public String businessMyfoodDetail(@Param("id")String id,HttpServletRequest request){
        int foodid=Integer.valueOf(id);
        Food food=foodService.findFoodById(foodid);
        Set<Comment>comments=food.getComments();
        request.getSession().putValue("food",food);
        request.getSession().putValue("comments",comments);
        return "businessMyFoodDetail";
    }


    //美食详情
    @RequestMapping(value = "foodDetail")
    public String foodDetail(@Param("id")String id,HttpServletRequest request){
        int foodid=Integer.valueOf(id);
        Food food=foodService.findFoodById(foodid);
        Set<Comment>comments=food.getComments();
        request.getSession().putValue("food",food);
        request.getSession().putValue("comments",comments);
        return "foodDetail";

    }
    //美食种类搜索
    @RequestMapping(value = "foodType")
    public String foodFind(@Param("type")String type,HttpServletRequest request){
        List<Food> foods=foodService.findFoodByType(type);
        request.getSession().putValue("foods",foods);
        request.getSession().putValue("type",type);
        return "foodType";

    }

    //美食模糊查找
    @RequestMapping(value = "/foodLike")
    public String foodLike(@Param(value = "likename") String likename,HttpServletRequest request){
        List<Food>foods=foodService.findFoodByFoodnameLike(likename);
        request.getSession().putValue("foods",foods);
        return "foodLikeAll";
    }
    //评论
    @RequestMapping(value = "foodComment")
    public String foodComment(){
        return "foodcomment";
    }
}
