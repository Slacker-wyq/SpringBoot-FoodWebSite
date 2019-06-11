package com.example.demo.wyq.service;

import com.example.demo.wyq.bean.Food;
import com.example.demo.wyq.repository.FoodJapRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class FoodService {
    @Resource
    private FoodJapRepository foodJapRepository;
    public Food save(Food food){
        return foodJapRepository.saveAndFlush(food);
    }
    public List<Food>findByPublisher(String publisher){
        return foodJapRepository.findByPublisher(publisher);
    }

    public void deleteFoodById(int id){
        foodJapRepository.deleteFoodById(id);
    }
    public Food findFoodById(int id){
        return foodJapRepository.findFoodById(id);
    }
    public List<Food> findFoodByType(String type){
        return foodJapRepository.findFoodByType(type);
    }
    public List<Food>findFoodByFoodnameLike(String foodname){
        return foodJapRepository.findFoodByFoodnameLike("%"+foodname+"%");
    }
    public List<Food>findAll(){
        return foodJapRepository.findAllFood();
    }
    public int allFood(){
        return foodJapRepository.allfood();
    }
    public int typeFood(String type){
        return foodJapRepository.typeFood(type);
    }
}
