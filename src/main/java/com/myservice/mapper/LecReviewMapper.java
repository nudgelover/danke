package com.myservice.mapper;
import com.myservice.dto.LecReview;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface LecReviewMapper extends KBMapper<Integer, LecReview> {
    public List<LecReview> getMyLecReview(String stdnId) throws Exception;

    public List<LecReview> getLecReview(Integer lecId) throws Exception;

    public void updateDelete(LecReview lecReview) throws Exception;

    public void updateLikes(Integer k) throws Exception;
}
