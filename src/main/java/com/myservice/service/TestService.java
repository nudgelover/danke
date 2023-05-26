package com.myservice.service;

import com.myservice.dto.Test;
import com.myservice.frame.KBService;
import com.myservice.mapper.TestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService implements KBService<Integer, Test> {

    @Autowired
    TestMapper mapper;

    @Override
    public void register(Test test) throws Exception {
        mapper.insert(test);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Test test) throws Exception {
        mapper.update(test);
    }

    @Override
    public Test get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Test> get() throws Exception {
        return mapper.selectall();
    }

    public List<Test> getMyTest(String stdnId) throws Exception{
        return mapper.getMyTest(stdnId);
    }

}
