package com.example.demo.wyq.repository;

import com.example.demo.wyq.bean.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserJapRepository extends JpaRepository<User,Integer> {
    List<User> findByUsername(String username);
    User findByUsernameAndPassword(String username,String password);
}
