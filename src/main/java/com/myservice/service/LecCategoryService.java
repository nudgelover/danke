package com.myservice.service;

import com.myservice.dto.LecCategory;
import com.myservice.frame.KBService;
import com.myservice.mapper.LecCategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LecCategoryService implements KBService<Integer, LecCategory> {

    @Autowired
    LecCategoryMapper mapper;

    @Override
    public void register(LecCategory lecCategory) throws Exception {
        mapper.insert(lecCategory);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(LecCategory lecCategory) throws Exception {
        mapper.update(lecCategory);
    }

    @Override
    public LecCategory get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<LecCategory> get() throws Exception {
        return mapper.selectall();
    }

    public List<LecCategory> getDistinctAll() throws Exception {
        return mapper.getdistinctall();
    }

    public List<LecCategory> getDistinctByTopic(String topic) throws Exception{
        return mapper.getdistinctbytopic(topic);
    }

    public List<LecCategory> getDistinctByParent(Integer parent) throws Exception{
        return mapper.getdistinctbyparent(parent);
    }

}
