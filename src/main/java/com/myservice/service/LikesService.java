package com.myservice.service;

import com.myservice.dto.Likes;
import com.myservice.frame.KBService;
import com.myservice.mapper.LikesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LikesService implements KBService<Integer, Likes> {

    @Autowired
    LikesMapper mapper;

    @Override
    public void register(Likes likes) throws Exception {
        mapper.insert(likes);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Likes likes) throws Exception {
        mapper.update(likes);
    }

    @Override
    public Likes get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Likes> get() throws Exception {
        return mapper.selectall();
    }

    public List<Likes> getMyLikes(String stdnId) throws Exception {
        return mapper.getMyLikes(stdnId);
    }

    public List<Likes> getPostLikes(Integer postId, String board) throws Exception {
        return mapper.getPostLikes(postId, board);
    }

    public Likes getThisLikes(Integer postId, String stdnId, String board) throws Exception {
        return mapper.getThisLikes(postId, stdnId, board);
    }

}
