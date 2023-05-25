package com.myservice.mapper;

import com.myservice.dto.Stdn;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface StdnMapper extends KBMapper<String, Stdn> {
}
