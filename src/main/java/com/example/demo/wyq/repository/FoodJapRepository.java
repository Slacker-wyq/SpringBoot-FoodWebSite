package com.example.demo.wyq.repository;

import com.example.demo.wyq.bean.Food;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface FoodJapRepository extends JpaRepository<Food,Integer> {
    List<Food> findByPublisher(String publisher);
    void deleteFoodById(int id);
    Food findFoodById(int id);
    List<Food> findFoodByType(String type);
    List<Food> findFoodByFoodnameLike(String foodname);
    @Query("select f from Food f ORDER BY f.id DESC")
    List<Food>findAllFood();
    @Query("select count(f.id) from Food f")
    int allfood();
    @Query("select count(f.id) from Food f where f.type=?1")
    int typeFood(String type);

}
