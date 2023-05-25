package com.myservice.service;

import com.github.pagehelper.PageHelper;
import com.myservice.dto.Stdy;
import com.myservice.frame.KBService;
import com.myservice.mapper.StdyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StdyService implements KBService<Integer, Stdy> {

    @Autowired
    StdyMapper mapper;

    @Override
    public void register(Stdy stdy) throws Exception {
        mapper.insert(stdy);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Stdy stdy) throws Exception {
        mapper.update(stdy);
    }

    @Override
    public Stdy get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Stdy> get() throws Exception {
        return mapper.selectall();
    }

    public List<Stdy> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 7); //한화면에 출력되는 개수
        return mapper.getpage();
    }

    public List<Stdy> getMyStdy(String writer) throws Exception{
        return mapper.getMyStdy(writer);
    }
}
