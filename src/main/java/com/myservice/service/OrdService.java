package com.myservice.service;

import com.myservice.dto.Ord;
import com.myservice.frame.KBService;
import com.myservice.mapper.OrdMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdService implements KBService<Integer, Ord> {

    @Autowired
    OrdMapper mapper;

    @Override
    public void register(Ord ord) throws Exception {
        mapper.insert(ord);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Ord ord) throws Exception {
        mapper.update(ord);
    }

    @Override
    public Ord get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Ord> get() throws Exception {
        return mapper.selectall();
    }

    public List<Ord> getMyOrd(String stdnId) throws Exception{
        return mapper.getMyOrd(stdnId);
    }

}
