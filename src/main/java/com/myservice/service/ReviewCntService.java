package com.myservice.service;

import com.myservice.dto.ReviewCnt;
import com.myservice.frame.KBService;
import com.myservice.mapper.ReviewCntMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewCntService implements KBService<Integer, ReviewCnt> {

    @Autowired
    ReviewCntMapper mapper;

    @Override
    public void register(ReviewCnt reviewCnt) throws Exception {

    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(ReviewCnt reviewCnt) throws Exception {

    }

    @Override
    public ReviewCnt get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<ReviewCnt> get() throws Exception {
        return mapper.selectall();
    }

    public List<ReviewCnt> getCntByReview(Integer lecId) throws Exception{
        return mapper.getCntByReview(lecId);
    }
}

