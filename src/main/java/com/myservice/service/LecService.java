package com.myservice.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.myservice.dto.Lec;
import com.myservice.dto.LecCateSearch;
import com.myservice.dto.LecSearch;
import com.myservice.dto.LecTopicSearch;
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
        PageHelper.startPage(pageNo, 6); //한화면에 출력되는 개수
        return mapper.getpage();
    }

    public Page<Lec> getSpecPage(int pageNo, Integer spec1) throws Exception{
        PageHelper.startPage(pageNo, 6); //한화면에 출력되는 개수
        return mapper.getspecpage(spec1);
    }

    public Page<Lec> getTopicPage(int pageNo, String topic) throws Exception {
        PageHelper.startPage(pageNo, 6); //한화면에 출력되는 개수
        return mapper.gettopicpage(topic);
    }

    public Page<Lec> getSbjCode2Page(int pageNo, Integer sbjCode2) throws Exception {
        PageHelper.startPage(pageNo, 6); //한화면에 출력되는 개수
        return mapper.getsbjcode2page(sbjCode2);
    }

    public List<Lec> getFindPage(int pageNo, LecSearch lecSearch) throws Exception {
        PageHelper.startPage(pageNo, 6); //한화면에 출력되는 개수
        return mapper.getfindpage(lecSearch);
    }

    public List<Lec> getRank() throws Exception{
        return mapper.getRank();
    }

    public List<Lec> getSbjCode2BySpecPage(int pageNo, LecCateSearch lecCateSearch) throws Exception {
        PageHelper.startPage(pageNo, 6); //한화면에 출력되는 개수
        return mapper.getsbjcode2byspecpage(lecCateSearch);
    }

    public List<Lec> getTopicBySpecPage(int pageNo, LecTopicSearch lecTopicSearch) throws Exception{
        PageHelper.startPage(pageNo, 6); //한화면에 출력되는 개수
        return mapper.gettopicbyspecpage(lecTopicSearch);
    }

}
