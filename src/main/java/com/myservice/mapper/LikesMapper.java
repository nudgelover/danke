package com.myservice.mapper;

import com.myservice.dto.Likes;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface LikesMapper extends KBMapper<Integer, Likes> {
    public List<Likes> getMyLikes(String stdnId) throws Exception;

    public List<Likes> getPostLikes(Integer postId, String board) throws Exception;

    public Likes getThisLikes(Integer postId, String stdnId, String board) throws Exception;
}
