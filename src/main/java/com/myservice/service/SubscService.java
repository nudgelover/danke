package com.myservice.service;

import com.myservice.dto.Subsc;
import com.myservice.frame.KBService;
import com.myservice.mapper.SubscMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubscService implements KBService<Integer, Subsc> {

    @Autowired
    SubscMapper mapper;

    @Override
    public void register(Subsc subsc) throws Exception {
        mapper.insert(subsc);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Subsc subsc) throws Exception {
        mapper.update(subsc);
    }

    @Override
    public Subsc get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Subsc> get() throws Exception {
        return mapper.selectall();
    }

    public Subsc getMySubsc(String stdnId) throws Exception{
        return mapper.getMySubsc(stdnId);
    }

}
