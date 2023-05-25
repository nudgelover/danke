package com.myservice.service;

import com.myservice.dto.Comm;
import com.myservice.frame.KBService;
import com.myservice.mapper.CommMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommService implements KBService<Integer, Comm> {

    @Autowired
    CommMapper mapper;

    @Override
    public void register(Comm comm) throws Exception {
        mapper.insert(comm);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Comm comm) throws Exception {
        mapper.update(comm);
    }

    @Override
    public Comm get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Comm> get() throws Exception {
        return mapper.selectall();
    }

    public List<Comm> getMyComm(String stdnId) throws Exception{
        return mapper.getMyComm(stdnId);
    }

    public List<Comm> getPostComm(Integer postId) throws Exception{
        return mapper.getPostComm(postId);
    }

}
