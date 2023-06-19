package com.myservice.mapper;


import com.myservice.dto.SbjDetail;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Mapper
@Repository
public interface SbjDetailMapper extends KBMapper<Integer, SbjDetail> {
    public List<SbjDetail> searchBig() throws Exception;

    public List<SbjDetail> searchMedium(Integer sbjCode2) throws Exception;

    public List<SbjDetail> searchMediumAll() throws Exception;

    public SbjDetail getThisSbjDetail(Integer sbjCode) throws Exception;
}
