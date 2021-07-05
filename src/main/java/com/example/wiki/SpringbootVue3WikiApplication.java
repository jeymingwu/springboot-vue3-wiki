package com.example.wiki;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.ConfigurableEnvironment;

@MapperScan("com.example.wiki.mapper")
@SpringBootApplication
public class SpringbootVue3WikiApplication {

    private static final Logger LOG = LoggerFactory.getLogger(SpringbootVue3WikiApplication.class);

    public static void main(String[] args) {
//        SpringApplication.run(SpringbootVue3WikiApplication.class, args);

        SpringApplication app = new SpringApplication(SpringbootVue3WikiApplication.class);
        ConfigurableEnvironment env = app.run(args).getEnvironment();
        LOG.info("启动成功！");
        LOG.info("地址：\thttp://localhost:{}", env.getProperty("server.port"));
    }

}
