package com.example.wiki.controller;

import com.example.wiki.biz.TestBiz;
import com.example.wiki.entity.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author : jeymingwu
 * @date : 2021-07-02
 **/
@RestController
public class TestController {

    @Autowired
    private TestBiz testBiz;

    @RequestMapping("/hello")
    public String hello() {
        return "hello world!";
    }

    @GetMapping("/hi")
    public String hi() {
        return "hi tony!";
    }

    @GetMapping(value = "/test")
    public List<Test> test() {
        return testBiz.selectAll();
    }
}
