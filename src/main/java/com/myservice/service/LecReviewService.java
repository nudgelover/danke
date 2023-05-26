package com.myservice.service;

import com.myservice.dto.LecReview;
import com.myservice.frame.KBService;
import com.myservice.mapper.LecReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LecReviewService implements KBService<Integer, LecReview> {

    @Autowired
    LecReviewMapper mapper;

    @Override
    public void register(LecReview lecReview) throws Exception {
        mapper.insert(lecReview);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(LecReview lecReview) throws Exception {
        mapper.update(lecReview);
    }

    @Override
    public LecReview get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<LecReview> get() throws Exception {
        return mapper.selectall();
    }

    public List<LecReview> getMyLecReview(String stdnId) throws Exception{
        return mapper.getMyLecReview(stdnId);
    }

    public List<LecReview> getLecReview(Integer lecId) throws Exception{
        return mapper.getLecReview(lecId);
    }

    public void updateDelete(LecReview lecReview) throws Exception{
        mapper.updateDelete(lecReview);
    }

    public void updateLikes(Integer k) throws Exception{
        mapper.updateLikes(k);
    }



}
