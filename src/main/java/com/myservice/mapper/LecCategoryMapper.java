package com.myservice.mapper;

import com.myservice.dto.LecCategory;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface LecCategoryMapper extends KBMapper<Integer, LecCategory> {
}
