package com.myservice.service;

import com.github.pagehelper.PageHelper;
import com.myservice.dto.Stdy;
import com.myservice.dto.StdySearch;
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
        PageHelper.startPage(pageNo, 10); //한화면에 출력되는 개수
        return mapper.getpage();
    }

    public List<Stdy> getFindPage(int pageNo, StdySearch stdySearch) throws Exception {
        PageHelper.startPage(pageNo, 10); //한화면에 출력되는 개수
        return mapper.getfindpage(stdySearch);
    }

    public List<Stdy> getRank3() throws Exception{
        return mapper.getRank3();
    }

    public Stdy getWithLikes (Integer id,String stdnId) throws Exception{
        return mapper.getWithLikes(id,stdnId);
    }

    public List<Stdy> getMyStdy(String writer) throws Exception{
        return mapper.getMyStdy(writer);
    }

    public Stdy stdyStartOrNot(String writer) throws Exception{
        return mapper.stdyStartOrNot(writer);
    }

    public Stdy stdyEndOrNot(String writer) throws Exception{
        return mapper.stdyEndOrNot(writer);
    }

    public Stdy stdyContentsUpdate(String writer) throws Exception{
        return mapper.stdyContentsUpdate(writer);
    }

    public Integer getStudyCountByMonth(String writer, String month) throws Exception {
        return mapper.getStudyCountByMonth(writer, month);
    }
}
