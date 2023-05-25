package com.myservice.mapper;

import com.myservice.dto.Cpn;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CpnMapper extends KBMapper<Integer, Cpn> {
    public List<CpnMapper> getMyCpn(String stdnId) throws Exception;
}
