package com.example.wiki.controller;

import com.example.wiki.biz.EBookBiz;
import com.example.wiki.entity.Ebook;
import com.example.wiki.response.CommonResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author : jeymingwu
 * @date : 2021-07-05
 **/
@RestController
@RequestMapping(value = "/ebook")
public class EbookController {

    @Autowired
    private EBookBiz eBookBiz;

    @GetMapping(value = "/list")
    public CommonResponse<List<Ebook>> getList() {
        CommonResponse<List<Ebook>> response = new CommonResponse<List<Ebook>>();
        response.setContent(eBookBiz.selectAll());
        return response;
    }
}
