package com.example.demo.wyq.repository;

import com.example.demo.wyq.bean.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentJapRepository extends JpaRepository<Comment,Integer> {
    void deleteCommentById(int id);
}
