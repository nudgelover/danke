package com.myservice.mapper;

import com.myservice.dto.Comm;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CommMapper extends KBMapper<Integer, Comm> {
    public List<Comm> getMyComm(String stdnId) throws Exception;

    public List<Comm> getPostComm(Integer postId) throws Exception;
}
