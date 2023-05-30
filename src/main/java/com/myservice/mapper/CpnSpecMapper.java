package com.myservice.mapper;

import com.myservice.dto.CpnSpec;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;



@Mapper
@Repository
public interface CpnSpecMapper extends KBMapper<Integer, CpnSpec> {
}
