package com.myservice.service;

import com.myservice.dto.Attd;
import com.myservice.frame.KBService;
import com.myservice.mapper.AttdMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AttdService implements KBService<Integer, Attd> {

    @Autowired
    AttdMapper mapper;

    @Override
    public void register(Attd attd) throws Exception {
        mapper.insert(attd);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Attd attd) throws Exception {
        mapper.update(attd);
    }

    @Override
    public Attd get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Attd> get() throws Exception {
        return mapper.selectall();
    }

    public List<Attd> getMyAttd(String stdnId) throws Exception {
        return mapper.getMyAttd(stdnId);
    }
    public List<Attd> getMyAttdByMonth(String stdnId,String month) throws Exception {
        return mapper.getMyAttdByMonth(stdnId, month);
    }

    public void insertAbsence(Attd attd) throws Exception{
        mapper.insertAbsence(attd);
    }

    public Attd attdOrNot(String stdnId) throws Exception{
        return mapper.attdOrNot(stdnId);
    }

}
