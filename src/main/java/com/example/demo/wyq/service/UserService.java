package com.example.demo.wyq.service;

import com.example.demo.wyq.bean.User;
import com.example.demo.wyq.repository.UserJapRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService {
    @Resource
    private UserJapRepository userJapRepository;
    public User save(User user){
        return userJapRepository.saveAndFlush(user);
    }
    public List<User>findByUsername(String username){
        return userJapRepository.findByUsername(username);
    }
    public User findByUsernameAndPassword(String username,String password){
        return userJapRepository.findByUsernameAndPassword(username,password);
    }

}
