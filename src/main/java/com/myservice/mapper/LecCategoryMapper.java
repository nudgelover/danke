package com.myservice.mapper;

import com.myservice.dto.LecCategory;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface LecCategoryMapper extends KBMapper<Integer, LecCategory> {
    public List<LecCategory> getdistinctall() throws Exception;

    public List<LecCategory> getdistinctbytopic(String topic) throws Exception;

    public List<LecCategory> getdistinctbyparent(Integer parent) throws Exception;
}
