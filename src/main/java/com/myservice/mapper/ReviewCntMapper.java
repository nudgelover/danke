package com.myservice.mapper;

import com.myservice.dto.ReviewCnt;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@Repository
public interface ReviewCntMapper extends KBMapper<Integer, ReviewCnt> {
}
