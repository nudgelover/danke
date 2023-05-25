package com.myservice.mapper;

import com.github.pagehelper.Page;
import com.myservice.dto.Anc;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@Repository
public interface AncMapper extends KBMapper<Integer, Anc> {
    Page<Anc> getpage() throws Exception;
}
