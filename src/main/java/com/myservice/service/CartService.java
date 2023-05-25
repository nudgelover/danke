package com.myservice.service;

import com.myservice.dto.Cart;
import com.myservice.frame.KBService;
import com.myservice.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService implements KBService<Integer, Cart> {

    @Autowired
    CartMapper mapper;

    @Override
    public void register(Cart cart) throws Exception {
        mapper.insert(cart);
    }

    @Override
    public void remove(Integer k) throws Exception {
        mapper.delete(k);
    }

    @Override
    public void modify(Cart cart) throws Exception {
        mapper.update(cart);
    }

    @Override
    public Cart get(Integer k) throws Exception {
        return mapper.select(k);
    }

    @Override
    public List<Cart> get() throws Exception {
        return mapper.selectall();
    }

    public List<Cart> getMyCart(String stdnId){
        return mapper.getMyCart(stdnId);
    }

    public Cart thisCart(Integer lecId, String stdnId){
        return mapper.thisCart(lecId, stdnId);
    }

    public Integer cntMyCart(String stdnId) {
        return mapper.cntMyCart(stdnId);
    }

}
