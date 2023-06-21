package com.myservice.service;

import com.myservice.dto.OrdDetail;
import com.myservice.frame.KBService;
import com.myservice.mapper.OrdDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdDetailService implements KBService<Integer, OrdDetail> {

    @Autowired
    OrdDetailMapper mapper;

    @Override
    public void register(OrdDetail ordDetail) throws Exception {
        mapper.insert(ordDetail);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(OrdDetail ordDetail) throws Exception {
        mapper.update(ordDetail);
    }

    @Override
    public OrdDetail get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<OrdDetail> get() throws Exception {
        return mapper.selectall();
    }

    public List<OrdDetail> getMyOrdDetail(String stdnId) throws Exception {
        return mapper.getMyOrdDetail(stdnId);
    }
    public List<OrdDetail> getMyPageOrdDetail(String stdnId) throws Exception {
        return mapper.getMyPageOrdDetail(stdnId);
    }


    public List<OrdDetail> getRank() throws Exception{
        return mapper.getRank();
    }

    public List<OrdDetail> getByOrd(Integer ordId) throws Exception{
        return mapper.getByOrd(ordId);
    }

    public OrdDetail getThisOrd(Integer lecId, String stdnId) throws Exception{
        return mapper.getThisOrd(lecId, stdnId);
    }

    public OrdDetail boughtOrNot(Integer lecId, String stdnId) throws Exception{
        return mapper.boughtOrNot(lecId, stdnId);
    }

}
