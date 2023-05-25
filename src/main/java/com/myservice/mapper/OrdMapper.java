package com.myservice.mapper;

import com.myservice.dto.Ord;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface OrdMapper extends KBMapper<Integer, Ord> {
    public List<Ord> getMyOrd(String stdnId) throws Exception;
}
