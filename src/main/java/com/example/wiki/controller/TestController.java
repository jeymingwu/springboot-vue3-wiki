package com.example.wiki.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author : jeymingwu
 * @date : 2021-07-02
 **/
@RestController
public class TestController {

    @RequestMapping("/hello")
    public String hello() {
        return "hello world!";
    }

    @GetMapping("/hi")
    public String hi() {
        return "hi tony!";
    }
}
