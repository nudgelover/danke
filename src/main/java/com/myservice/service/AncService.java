package com.myservice.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.myservice.dto.Anc;
import com.myservice.dto.Search;
import com.myservice.frame.KBService;
import com.myservice.mapper.AncMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AncService implements KBService<Integer, Anc> {

    @Autowired
    AncMapper mapper;

    @Override
    public void register(Anc anc) throws Exception {
        mapper.insert(anc);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Anc anc) throws Exception {
        mapper.update(anc);
    }

    @Override
    public Anc get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Anc> get() throws Exception {
        return mapper.selectall();
    }

    public int getTotalCount() throws Exception {
        return mapper.getTotalCount();
    }

    public List<Anc> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 10); //한화면에 출력되는 개수
        return mapper.getpage();
    }
    public Page<Anc> getFindPage(int pageNo, Search search) throws Exception {
        PageHelper.startPage(pageNo, 10);

        return mapper.getfindpage(search);
    }
}
