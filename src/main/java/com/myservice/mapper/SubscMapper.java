package com.myservice.mapper;

import com.myservice.dto.Subsc;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@Repository
public interface SubscMapper extends KBMapper<Integer, Subsc> {
    public Subsc getMySubsc(String stdnId) throws Exception;
}
