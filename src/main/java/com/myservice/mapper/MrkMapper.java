package com.myservice.mapper;

import com.github.pagehelper.Page;
import com.myservice.dto.Mrk;
import com.myservice.dto.MrkSearch;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MrkMapper extends KBMapper<Integer, Mrk> {
    public List<Mrk> getMyMrk(String writer);

    public List<Mrk> getKeyword(String keyword);

    public List<Mrk> getRecent();

    public List<Mrk> search(MrkSearch ms);

    public Page<Mrk> getpage() throws Exception;


}
