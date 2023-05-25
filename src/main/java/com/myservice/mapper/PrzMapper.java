package com.myservice.mapper;

import com.myservice.dto.Prz;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface PrzMapper extends KBMapper<Integer, Prz> {
    public List<Prz> getMyPrz(String stdnId) throws Exception;

    public List<Prz> getHolder(String prz) throws Exception;
}
