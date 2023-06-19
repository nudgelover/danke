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

    Page<Lec> getfindpage(LecSearch lecSearch) throws Exception;

    public List<Lec> getRank() throws Exception;

    Page<Lec> gettopicpage(String topic) throws Exception;

    Page<Lec> getsbjcode2page(Integer sbjCode2) throws Exception;
}
