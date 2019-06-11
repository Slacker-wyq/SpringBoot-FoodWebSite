package com.example.demo.wyq.service;

import com.example.demo.wyq.bean.Comment;
import com.example.demo.wyq.repository.CommentJapRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Set;

@Service
@Transactional
public class CommentService {
    @Resource
    private CommentJapRepository commentJapRepository;
    public Comment save(Comment comment){
        return commentJapRepository.saveAndFlush(comment);
    }
    public List<Comment>findAll(){
        return commentJapRepository.findAll();
    }
    public void deleteCommentById(int id){
        commentJapRepository.deleteCommentById(id);
    }
}
