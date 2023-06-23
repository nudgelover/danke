package com.myservice.mapper;

import com.github.pagehelper.Page;
import com.myservice.dto.Anc;
import com.myservice.dto.Search;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@Repository
public interface AncMapper extends KBMapper<Integer, Anc> {
    public Integer getTotalCount() throws Exception;
    Page<Anc> getpage() throws Exception;

    Page<Anc> getfindpage(Search search)throws Exception;

}
