package com.example.wiki.biz.impl;

import com.example.wiki.biz.EBookBiz;
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
public class EBookBizImpl implements EBookBiz {

    @Autowired
    private EbookMapper eBookMapper;

    @Override
    public List<Ebook> selectAll() {
        return eBookMapper.selectByExample(null);
    }

    @Override
    public List<EbookResponse> selectAll(EbookRequest request) {
        EbookExample ebookExample = new EbookExample();
        EbookExample.Criteria criteria = ebookExample.createCriteria();
        criteria.andNameLike("%" + request.getName() + "%");
        List<Ebook> ebookList = eBookMapper.selectByExample(ebookExample);

        ArrayList<EbookResponse> eBookResponseList = new ArrayList<>();
        for (Ebook ebook : ebookList) {
            EbookResponse ebookResponse = new EbookResponse();
            BeanUtils.copyProperties(ebook, ebookResponse);
            eBookResponseList.add(ebookResponse);
        }

        return eBookResponseList;
    }
}
