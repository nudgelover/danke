package com.myservice.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.myservice.dto.Curri;
import com.myservice.frame.KBService;
import com.myservice.mapper.CurriMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CurriService implements KBService<Integer, Curri> {

    @Autowired
    CurriMapper mapper;

    @Override
    public void register(Curri curri) throws Exception {
        mapper.insert(curri);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Curri curri) throws Exception {
        mapper.update(curri);
    }

    @Override
    public Curri get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Curri> get() throws Exception {
        return mapper.selectall();
    }

    public Curri getMyCurri(Integer id) throws Exception{
        return mapper.getMyCurri(id);
    }

    public List<Curri> getMyCurris(String stdnId) throws Exception{
        return mapper.getMyCurris(stdnId);
    }

    public Curri thisCurri(String stdnId,Integer lecId) throws Exception{
        return mapper.thisCurri(stdnId, lecId);
    }

    public Integer cntMyCurri(String stdnId) throws Exception{
        return mapper.cntMyCurri(stdnId);
    }

    public Page<Curri> getPage(int pageNo) throws Exception{
        PageHelper.startPage(pageNo, 9); //한화면에 출력되는 개수
        return mapper.getpage();
    }

}
