package com.example.wiki.biz.impl;

import com.example.wiki.biz.EbookBiz;
import com.example.wiki.entity.Ebook;
import com.example.wiki.entity.EbookExample;
import com.example.wiki.mapper.EbookMapper;
import com.example.wiki.request.EbookRequest;
import com.example.wiki.response.EbookResponse;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : jeymingwu
 * @date : 2021-07-05
 **/
@Service
public class EbookBizImpl implements EbookBiz {

    @Autowired
    private EbookMapper ebookMapper;

    @Override
    public List<Ebook> selectAll() {
        return ebookMapper.selectByExample(null);
    }

    @Override
    public List<EbookResponse> selectAll(EbookRequest request) {
        EbookExample ebookExample = new EbookExample();
        EbookExample.Criteria criteria = ebookExample.createCriteria();
        criteria.andNameLike("%" + request.getName() + "%");
        List<Ebook> ebookList = ebookMapper.selectByExample(ebookExample);

        ArrayList<EbookResponse> eBookResponseList = new ArrayList<>();
        for (Ebook ebook : ebookList) {
            EbookResponse ebookResponse = new EbookResponse();
            BeanUtils.copyProperties(ebook, ebookResponse);
            eBookResponseList.add(ebookResponse);
        }

        return eBookResponseList;
    }
}
