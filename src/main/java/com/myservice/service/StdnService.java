package com.myservice.service;

import com.myservice.dto.Stdn;
import com.myservice.frame.KBService;
import com.myservice.mapper.StdnMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StdnService implements KBService<String, Stdn> {
    @Autowired
    StdnMapper mapper;

    @Override
    public void register(Stdn stdn) throws Exception {
        mapper.insert(stdn);
    }

    @Override
    public void remove(String s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(Stdn stdn) throws Exception {
        mapper.update(stdn);
    }

    @Override
    public Stdn get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Stdn> get() throws Exception {
        return mapper.selectall();
    }

    public void updatePwd(Stdn stdn) throws Exception{
        mapper.updatePwd(stdn);
    }

    public void updateExit(Stdn stdn) throws Exception{
        mapper.updateExit(stdn);
    }

    public void updateAdm(Stdn stdn) throws Exception{
        mapper.updateAdm(stdn);
    }
}
