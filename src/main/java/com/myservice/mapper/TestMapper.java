package com.myservice.mapper;

import com.myservice.dto.Test;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface TestMapper extends KBMapper<Integer, Test> {
    public List<Test> getMyTest(String stdnId) throws Exception;
}
