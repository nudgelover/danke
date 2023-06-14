package com.myservice.service;

import com.myservice.dto.Comm;
import com.myservice.dto.MrkComm;
import com.myservice.frame.KBService;
import com.myservice.mapper.CommMapper;
import com.myservice.mapper.MrkCommMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MrkCommService implements KBService<Integer, MrkComm> {

    @Autowired
    MrkCommMapper mapper;

    @Override
    public void register(MrkComm mrkcomm) throws Exception {
        mapper.insert(mrkcomm);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(MrkComm mrkcomm) throws Exception {
        mapper.update(mrkcomm);
    }

    @Override
    public MrkComm get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<MrkComm> get() throws Exception {
        return mapper.selectall();
    }

    public List<MrkComm> getMyComm(String stdnId) throws Exception{
        return mapper.getMyComm(stdnId);
    }

    public List<MrkComm> getPostComm(Integer postId) throws Exception{
        return mapper.getPostComm(postId);
    }

    public Integer cntComm(Integer postId) throws Exception {
        return mapper.cntComm(postId);
    }


}
