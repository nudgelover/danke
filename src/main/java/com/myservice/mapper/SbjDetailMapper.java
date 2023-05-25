package com.myservice.mapper;


import com.myservice.dto.SbjDetail;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface SbjDetailMapper extends KBMapper<Integer, SbjDetail> {
}
