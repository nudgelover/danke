package com.myservice.mapper;

import com.myservice.dto.OrdDetail;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface OrdDetailMapper extends KBMapper<Integer, OrdDetail> {
    public List<OrdDetail> getMyOrdDetail(String stdnId) throws Exception;

    public List<OrdDetail>getByOrd(Integer ordId) throws Exception;

    public List<OrdDetail> getRank() throws Exception;

    public OrdDetail getThisOrd(Integer lecId, String stdnId) throws Exception;

    public OrdDetail boughtOrNot(Integer lecId, String stdnId) throws Exception;
}
