package com.myservice.mapper;

import com.github.pagehelper.Page;
import com.myservice.dto.Curri;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CurriMapper extends KBMapper<Integer, Curri> {
    Page<Curri> getpage() throws Exception;

    public List<Curri> getMyCurris(String stdnId) throws Exception;

    public Curri getMyCurri(Integer id) throws Exception;

    public Curri thisCurri(String stdnId,Integer lecId) throws Exception;

    public Integer cntMyCurri(String stdnId) throws Exception;
}
