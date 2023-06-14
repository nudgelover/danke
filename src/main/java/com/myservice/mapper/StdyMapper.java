package com.myservice.mapper;

import com.github.pagehelper.Page;
import com.myservice.dto.Stdy;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface StdyMapper extends KBMapper<Integer, Stdy> {
    Page<Stdy> getpage() throws Exception;

    public List<Stdy> getMyStdy(String writer) throws Exception;

    public Stdy stdyStartOrNot(String writer) throws Exception;

    public Stdy stdyEndOrNot(String writer) throws Exception;

    public Stdy stdyContentsUpdate(String writer) throws Exception;

}
