package com.myservice.mapper;

import com.myservice.dto.Mrk;
import com.myservice.dto.MyPage;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MyPageMapper extends KBMapper<String, MyPage> {
    public List<MyPage> getGrade(String digidate);

}
