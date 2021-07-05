package com.example.wiki.biz.impl;

import com.example.wiki.biz.EBookBiz;
import com.example.wiki.entity.Ebook;
import com.example.wiki.mapper.EbookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : jeymingwu
 * @date : 2021-07-05
 **/
@Service
public class EBookBizImpl implements EBookBiz {

    @Autowired
    private EbookMapper eBookMapper;

    @Override
    public List<Ebook> selectAll() {
        return eBookMapper.selectByExample(null);
    }
}
