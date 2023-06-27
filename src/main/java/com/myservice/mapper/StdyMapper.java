package com.myservice.mapper;

import com.github.pagehelper.Page;
import com.myservice.dto.Attd;
import com.myservice.dto.Stdy;
import com.myservice.dto.StdySearch;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface StdyMapper extends KBMapper<Integer, Stdy> {
    Page<Stdy> getpage() throws Exception;

    Page<Stdy> getmypage(String writer) throws Exception;

    Page<Stdy> getfindpage(StdySearch stdySearch) throws Exception;

    public List<Stdy> getRank3() throws Exception;

    public List<Stdy> getMyStdy(String writer) throws Exception;

    public Stdy getWithLikes (Integer id,String stdnId) throws Exception;

    public Stdy stdyStartOrNot(String writer) throws Exception;

    public Stdy stdyEndOrNot(String writer) throws Exception;

    public Stdy stdyContentsUpdate(String writer) throws Exception;

    public Integer getStudyCountByMonth(String writer, String month) throws Exception;

    public List<Stdy> getStudyByMonth(String writer, String month) throws Exception;

    public Stdy myMonthlyResult(String writer) throws Exception;
}
