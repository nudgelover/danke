package com.myservice.mapper;

import com.myservice.dto.ReviewCnt;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ReviewCntMapper extends KBMapper<Integer, ReviewCnt> {
    public List<ReviewCnt> getCntByReview(Integer lecId) throws Exception;
}
