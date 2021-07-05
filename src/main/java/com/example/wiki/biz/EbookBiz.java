package com.example.wiki.biz;

import com.example.wiki.entity.Ebook;
import com.example.wiki.request.EbookRequest;
import com.example.wiki.response.EbookResponse;

import java.util.List;

public interface EbookBiz {

    List<Ebook> selectAll();

    List<EbookResponse> selectAll(EbookRequest request);
}
