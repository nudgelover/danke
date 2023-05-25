package com.myservice.mapper;

import com.myservice.dto.MyPage;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MyPageMapper extends KBMapper<String, MyPage> {
}
