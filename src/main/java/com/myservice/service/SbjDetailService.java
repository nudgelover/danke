package com.myservice.service;

import com.myservice.dto.SbjDetail;
import com.myservice.frame.KBService;
import com.myservice.mapper.SbjDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SbjDetailService implements KBService<Integer, SbjDetail> {

    @Autowired
    SbjDetailMapper mapper;

    @Override
    public void register(SbjDetail sbjDetail) throws Exception {
        mapper.insert(sbjDetail);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(SbjDetail sbjDetail) throws Exception {
        mapper.update(sbjDetail);
    }

    @Override
    public SbjDetail get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<SbjDetail> get() throws Exception {
        return mapper.selectall();
    }

    public List<SbjDetail> searchBig() throws Exception{
        return mapper.searchBig();
    }

    public List<SbjDetail> searchMedium(Integer SbjCode2) throws Exception{
        return mapper.searchMedium(SbjCode2);
    }

    public List<SbjDetail> searchMediumAll() throws Exception{
        return mapper.searchMediumAll();
    }
}
