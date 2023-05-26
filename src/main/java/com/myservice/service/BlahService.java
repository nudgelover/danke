package com.myservice.service;

import com.myservice.dto.Blah;
import com.myservice.frame.KBService;
import com.myservice.mapper.BlahMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlahService implements KBService<Integer, Blah> {

    @Autowired
    BlahMapper mapper;

    @Override
    public void register(Blah blah) throws Exception {
        mapper.insert(blah);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Blah blah) throws Exception {
        mapper.update(blah);
    }

    @Override
    public Blah get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Blah> get() throws Exception {
        return mapper.selectall();
    }

    public List<Blah> getMyBlah(String stdnId) throws Exception{
        return mapper.getMyBlah(stdnId);
    }

    public void updateLikes(Blah blah) throws Exception{
        mapper.updateLikes(blah);
    }


}
