package com.example.demo.wyq.controller;

import com.example.demo.wyq.bean.Business;
import com.example.demo.wyq.bean.Food;
import com.example.demo.wyq.bean.User;
import com.example.demo.wyq.repository.BusinessJapRepository;
import com.example.demo.wyq.service.BusinessService;
import com.example.demo.wyq.service.FoodService;
import com.example.demo.wyq.service.UserService;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Set;
import java.util.UUID;

@Controller
public class UserController {
    @Resource
    private UserService userService;
    @Resource
    private BusinessService businessService;
    @Resource
    private FoodService foodService;
    //用户登录
    @RequestMapping(value = "login")
    public String login(){
        return "login";
    }
    @RequestMapping(value = "loginSuccess")
    public String loginSuccess(User user, HttpServletRequest request){
        String username=user.getUsername();
        String password=user.getPassword();
        User user1=userService.findByUsernameAndPassword(username,password);
        if(userService.findByUsernameAndPassword(username,password)==null){
            return "login";
        }else {
            if(user1.getType()!=null){
                if(user1.getType().equals("admin")){
                    request.getSession().putValue("username",username);
                    return "redirect:/adminmain";
                }else {
                    request.getSession().putValue("username",username);
                    return "redirect:/businessMyDetail";
                }
            }else {
                request.getSession().putValue("username",username);
                return "main";
            }
        }
    }
    //用户注册
    @RequestMapping(value = "userAdd")
    public String userAdd(){
        return "userAdd";
    }
    @RequestMapping(value = "register")
    public String register(User user){
        if(userService.findByUsername(user.getUsername()).size()==0){
            userService.save(user);
            return "login";
        }

        return "userAddfailure";
    }
    @RequestMapping(value = "cancellation")
    public String cancellation(){
        return "redirect:/main";
    }
    @RequestMapping(value = "businesscancellation")
    public String businesscancellation(){
        return "login";
    }

    //商家注册
    @RequestMapping(value = "businessAdd")
    public String businessAdd(){return "businessAdd";}
    @RequestMapping(value = "businessAddSuccess")
    public String businessAssSuccess(Business business, @RequestParam(value = "file") MultipartFile file){
        if(userService.findByUsername(business.getUsername()).size()==0){
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
            business.setVerification("false");
            business.setPhoto(fileName);
            businessService.save(business);
            return "login";
        }
        return "redirect:/businessAdd";
    }


    @RequestMapping(value = "deleteBusiness")
    public String deleteBusiness(@Param("id")String id){
        int businessid=Integer.valueOf(id);
        Business business=businessService.findBusinessById(businessid);
        Set<Food>foods=business.getFoods();
        for(Food food:foods){
            int foodId=food.getId();
            foodService.deleteFoodById(foodId);
        }
        businessService.deleteBusinessById(businessid);
        return "redirect:/adminbusiness";
    }
}
