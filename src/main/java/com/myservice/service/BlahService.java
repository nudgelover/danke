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


    public Blah getMyBlahRank(String stdnId) throws Exception {
        return mapper.getMyBlahRank(stdnId);
    }


    public Integer cntGetMyComm(String stdnId) throws Exception {
        return mapper.cntGetMyComm(stdnId);
    }

    public Integer cntGetMylikes(String stdnId) throws Exception {
        return mapper.cntGetMylikes(stdnId);
    }

    @Override
    public List<Blah> get() throws Exception {
        return mapper.selectall();
    }

    public List<Blah> getMyBlah(String stdnId) throws Exception{
        return mapper.getMyBlah(stdnId);
    }


    public List<Blah> getBlahRank() throws Exception{
        return mapper.getBlahRank();
    }

    public void updateLikes(Blah blah) throws Exception{
        mapper.updateLikes(blah);
    }
    public Integer cntLike(Integer postId) throws Exception {
        return mapper.cntLike(postId);
    }

}
