package com.myservice.service;

import com.myservice.dto.Cart;
import com.myservice.dto.MyPage;
import com.myservice.frame.KBService;
import com.myservice.mapper.MyPageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyPageService implements KBService<String, MyPage> {
    @Autowired
    MyPageMapper mapper;

    @Override
    public void register(MyPage mypage) throws Exception {
        mapper.insert(mypage);
    }

    @Override
    public void remove(String s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(MyPage mypage) throws Exception {
        mapper.update(mypage);
    }

    @Override
    public MyPage get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<MyPage> get() throws Exception {
        return mapper.selectall();
    }


    public List<MyPage> getGrade(String digidate) {
        return mapper.getGrade(digidate);
    }
}
