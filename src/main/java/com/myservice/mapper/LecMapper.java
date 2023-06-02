package com.myservice.mapper;

import com.github.pagehelper.Page;
import com.myservice.dto.Lec;
import com.myservice.dto.LecSearch;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface LecMapper extends KBMapper<Integer, Lec> {
    Page<Lec> getpage() throws Exception;

    public List<Lec> search(LecSearch ls) throws Exception;

    public List<Lec> getRank() throws Exception;
}
