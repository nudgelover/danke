package com.myservice.service;

import com.myservice.dto.Prz;
import com.myservice.frame.KBService;
import com.myservice.mapper.PrzMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PrzService implements KBService<Integer, Prz> {

    @Autowired
    PrzMapper mapper;

    @Override
    public void register(Prz prz) throws Exception {
        mapper.insert(prz);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Prz prz) throws Exception {
        mapper.update(prz);
    }

    @Override
    public Prz get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Prz> get() throws Exception {
        return mapper.selectall();
    }

    public List<Prz> getMyPrz(String stdnId) throws Exception{
        return mapper.getMyPrz(stdnId);
    }

    public List<Prz> getHolder(String prz) throws Exception{
        return mapper.getHolder(prz);
    }

}
