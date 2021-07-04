package com.example.wiki.biz.impl;

import com.example.wiki.biz.TestBiz;
import com.example.wiki.entity.Test;
import com.example.wiki.mapper.TestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : jeymingwu
 * @date : 2021-07-04
 **/
@Service
public class TestImpl implements TestBiz {

    @Autowired
    private TestMapper testMapper;

    @Override
    public List<Test> selectAll() {
        return testMapper.selectAll();
    }
}
