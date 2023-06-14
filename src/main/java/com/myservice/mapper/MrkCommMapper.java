package com.myservice.mapper;

import com.myservice.dto.Comm;
import com.myservice.dto.MrkComm;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MrkCommMapper extends KBMapper<Integer, MrkComm> {
    public List<MrkComm> getMyComm(String stdnId) throws Exception;
    public Integer cntComm(Integer id) throws Exception;

    public List<MrkComm> getPostComm(Integer postId) throws Exception;
}
