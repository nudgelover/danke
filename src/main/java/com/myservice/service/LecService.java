package com.myservice.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.myservice.dto.Lec;
import com.myservice.dto.LecSearch;
import com.myservice.frame.KBService;
import com.myservice.mapper.LecMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LecService implements KBService<Integer, Lec> {

    @Autowired
    LecMapper mapper;

    @Override
    public void register(Lec lec) throws Exception {
        mapper.insert(lec);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Lec lec) throws Exception {
        mapper.update(lec);
    }

    @Override
    public Lec get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Lec> get() throws Exception {
        return mapper.selectall();
    }

    public Page<Lec> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 12); //한화면에 출력되는 개수
        return mapper.getpage();
    }

    public List<Lec> search(LecSearch ls) throws Exception{
        return mapper.search(ls);
    }

    public List<Lec> getRank() throws Exception{
        return mapper.getRank();
    }
}
