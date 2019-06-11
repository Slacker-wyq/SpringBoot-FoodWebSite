package com.example.demo.wyq.repository;

import com.example.demo.wyq.bean.Business;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BusinessJapRepository extends JpaRepository<Business,Integer> {
    @Query("select b from Business b where b.verification=?1")
    List<Business>findBusinessByVerification(String verification);

    Business findBusinessById(int id);
    void deleteBusinessById(int id);
    Business findBusinessByUsername(String username);
}
