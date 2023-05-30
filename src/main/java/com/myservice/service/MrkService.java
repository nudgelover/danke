package com.myservice.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.myservice.dto.Mrk;
import com.myservice.frame.KBService;
import com.myservice.mapper.MrkMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MrkService implements KBService<Integer, Mrk> {

    @Autowired
    MrkMapper mapper;

    @Override
    public void register(Mrk mrk) throws Exception {
        mapper.insert(mrk);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Mrk mrk) throws Exception {
        mapper.update(mrk);
    }

    @Override
    public Mrk get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Mrk> get() throws Exception {
        return mapper.selectall();
    }

    public List<Mrk> getMyMarker(String stdnId){
        return mapper.getMyMrk(stdnId);
    }

    public List<Mrk> getKeyword(String keyword){
        return mapper.getKeyword(keyword);
    }

    public List<Mrk> getRecent(){
        return mapper.getRecent();
    }


    public Page<Mrk> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 6); // 3: 한화면에 출력되는 개수
        return mapper.getpage();
    }



}
