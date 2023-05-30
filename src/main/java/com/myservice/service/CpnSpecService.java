package com.myservice.service;

import com.myservice.dto.CpnSpec;
import com.myservice.frame.KBService;
import com.myservice.mapper.CpnSpecMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CpnSpecService implements KBService<Integer, CpnSpec> {

    @Autowired
    CpnSpecMapper mapper;

    @Override
    public void register(CpnSpec cpnSpec) throws Exception {
        mapper.insert(cpnSpec);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(CpnSpec cpnSpec) throws Exception {
        mapper.update(cpnSpec);
    }

    @Override
    public CpnSpec get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<CpnSpec> get() throws Exception {
        return mapper.selectall();
    }
}
