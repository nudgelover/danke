package com.myservice.mapper;

import com.myservice.dto.Attd;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AttdMapper extends KBMapper<Integer, Attd> {
    public List<Attd> getMyAttd(String stdnId) throws Exception;
}
