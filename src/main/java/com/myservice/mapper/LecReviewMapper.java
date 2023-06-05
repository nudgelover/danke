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

    public List<LecReview> getByLecId(Integer lecId) throws Exception;

    public List<LecReview> getByLecIdWithLikes(Integer lecId, String stdnId) throws Exception;

    public void updateDelete(Integer lecReviewId) throws Exception;

    public LecReview getThisLecReview(String stdnId, Integer lecId) throws Exception;
}
