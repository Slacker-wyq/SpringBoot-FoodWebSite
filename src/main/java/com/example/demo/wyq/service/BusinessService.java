package com.example.demo.wyq.service;

import com.example.demo.wyq.bean.Business;
import com.example.demo.wyq.repository.BusinessJapRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class BusinessService {

    @Resource
    private BusinessJapRepository businessJapRepository;


    public Business save(Business business){
        return businessJapRepository.saveAndFlush(business);
    }
    public List<Business>findBusinessByVerification(String verification){
        return businessJapRepository.findBusinessByVerification(verification);

    }
    public Business findBusinessById(int id){
        return businessJapRepository.findBusinessById(id);
    }
    public void deleteBusinessById(int id){
        businessJapRepository.deleteBusinessById(id);
    }
    public Business findBusinessByUsername(String username){
        return businessJapRepository.findBusinessByUsername(username);
    }
}
