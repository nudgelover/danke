package com.myservice.service;

import com.myservice.dto.Cpn;
import com.myservice.frame.KBService;
import com.myservice.mapper.CpnMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CpnService implements KBService<Integer, Cpn> {

    @Autowired
    CpnMapper mapper;

    @Override
    public void register(Cpn cpn) throws Exception {
        mapper.insert(cpn);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Cpn cpn) throws Exception {
        mapper.update(cpn);
    }

    @Override
    public Cpn get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Cpn> get() throws Exception {
        return mapper.selectall();
    }

    public List<Cpn> getMyCpn(String stdnId) throws Exception{
        return mapper.getMyCpn(stdnId);
    }

}
