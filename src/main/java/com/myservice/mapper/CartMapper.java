package com.myservice.mapper;

import com.myservice.dto.Cart;
import com.myservice.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CartMapper extends KBMapper<Integer, Cart> {
    public List<Cart> getMyCart(String stdnId);

    public Cart thisCart(Integer lecId, String stdnId);

    public Integer cntMyCart(String stdnId);
}
