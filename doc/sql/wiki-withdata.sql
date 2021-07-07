/*
 Navicat Premium Data Transfer

 Source Server         : wikiprod-rm-uf6470s9615e13hc4no.mysql.rds.aliyuncs.com
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : rm-uf6470s9615e13hc4no.mysql.rds.aliyuncs.com:3306
 Source Schema         : wiki

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 05/07/2021 16:18:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `parent` bigint(20) NOT NULL DEFAULT 0 COMMENT '父id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (10, 0, '视频课程', 10);
INSERT INTO `category` VALUES (11, 10, '项目实战', 11);
INSERT INTO `category` VALUES (12, 10, '免费课程', 12);
INSERT INTO `category` VALUES (100, 0, '前端开发', 100);
INSERT INTO `category` VALUES (101, 100, 'Vue', 101);
INSERT INTO `category` VALUES (200, 0, 'Java', 200);
INSERT INTO `category` VALUES (201, 200, '基础应用', 201);
INSERT INTO `category` VALUES (501, 500, '服务器', 501);
INSERT INTO `category` VALUES (502, 500, '开发工具', 502);
INSERT INTO `category` VALUES (503, 500, '热门服务端语言', 503);

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `id` bigint(20) NOT NULL COMMENT '文档id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文档内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (1, '<p><font color=\"#f9963b\"><b>课程主页：<a href=\"https://coding.imooc.com/class/474.html\" target=\"_blank\">《SpringBoot知识体系+Vue3全家桶 前后端分离 实战WIKI知识库系统》</a></b></font><br></p><p><strong><font size=\"3\" color=\"#f9963b\"><br></font></strong></p><p><strong><font size=\"3\" color=\"#f9963b\">SpringBoot知识体系整理：</font></strong><font color=\"#f9963b\"><br></font></p><p><img src=\"https://pic4.zhimg.com/80/v2-041bb0d9832c2902ee96638c3531daaf_1440w.jpg\" style=\"max-width:100%;\"><strong><br></strong></p><hr><h2 id=\"o20dk\">新课与旧课在技术上有哪些区别呢？</h2><p><b>老课是业务驱动</b>，设计了很多常见的业务功能，再讲解用到的技术。老课最早的设计是针对会用SpringBoot的，所以关于SpringBoot知识介绍相对少，主要介绍SpringCloud。</p><p><b>新课是技术驱动</b>，为了讲某个技术而设计某个功能，关于SpringBoot和<b><font color=\"#f9963b\">Vue3</font></b>（老课是Vue2）的知识点会更全面，像过滤器、拦截器、AOP、异步化、定时任务、websocket等<b><font color=\"#f9963b\">SpringBoot生态知识，在新课会有更全面的介绍</font></b>。<br></p><p><b><font color=\"#f9963b\">在知识点设计上尽量跟老课不重复</font></b><font size=\"4\" color=\"#000000\"><b style=\"\"><br></b></font></p><hr><p><b style=\"color: rgb(0, 0, 0); font-size: large;\">文档树功能：</b><br></p><p><font color=\"#c24f4a\"><b>可无限级扩展</b></font></p><p><font color=\"#c24f4a\"><b>被点赞可收到实时通知</b></font></p><p><font color=\"#c24f4a\"><b>支持文字+图片，可嵌入视频，如下</b></font></p><p><iframe src=\"//player.bilibili.com/player.html?aid=714347073&amp;bvid=BV11X4y1G7HZ&amp;cid=301844615&amp;page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe></p>');
INSERT INTO `content` VALUES (2, '<h2 id=\"cro7w\">相关软件已传到QQ群文件中</h2><p><ul><li><font size=\"3\">jdk-8u221-windows-x64.exe<br></font></li><li><font size=\"3\">ideaIU-2019.2.3.exe<br></font></li><li><font size=\"3\">Git-2.23.0-64-bit.exe<br></font></li><li><font size=\"3\">mysql-installer-community-5.7.27.0.msi<br></font></li><li><font size=\"3\">jdk-8u261-linux-x64.tar.gz<br></font></li></ul></p><h2 id=\"1eyks\">源码下载</h2><p><ul><li><p><font size=\"3\">关于慕课网GIT说明：<a href=\"https://www.imooc.com/help/detail/111\">https://www.imooc.com/help/detail/111</a></font></p></li><li><p><font size=\"3\">使用下面的命令将源码从远程仓库拉取到本地，需要本地提前安装好git</font></p></li></ul><pre><code><font size=\"3\">git clone https://git.imooc.com/coding-474/jiawawiki.git\n会配置ssh的，可以用ssh:\ngit clone ssh://git@git.imooc.com:80/coding-474/jiawawiki.git\n</font></code></pre><ul><li><font size=\"3\">数据库初始化脚本已传到QQ群中</font></li></ul></p><h2>项目初始化</h2><p><ul><li><font size=\"3\">需要本地安装好idea, nodejs，jdk1.8, mysql8.0/5.7, navicat（数据库可视化工具）</font></li><li><font size=\"3\">将下载好的源码，用idea打开</font></li><li><font size=\"3\">刷新maven依赖</font></li><li><font size=\"3\">安装vue cli，参照课程4-3</font></li><li><font size=\"3\">初始化web模块</font></li></ul><pre><code><font size=\"3\">cd web\nnpm install\n</font></code></pre><ul><li><font size=\"3\">新建数据库参照课程3-2，数据库配置在application.properties</font></li><li><font size=\"3\">数据库初始脚本从QQ群文件中下载</font></li></ul></p><h2>项目启动</h2><p><ul><li><font size=\"3\">启动服务端：WikiApplication</font></li><li><font size=\"3\">启动前端网站：web\\package.json</font></li></ul></p><h2>页面访问</h2><p><ul><li><font size=\"3\">网站地址:&nbsp;<a href=\"http://localhost:8080/\">http://localhost:8080</a><br>初始用户名密码：test/test</font></li></ul></p>');
INSERT INTO `content` VALUES (3, '<ul><li><h5><font size=\"3\">第1章 课程导学&nbsp;试看</font></h5><p><font size=\"3\">本章作为课程内容引入，主要介绍课程实战项目，课程的学习方法以及课程内容具体安排，希望大家都能通过这门课程，学有所成，学有所归。</font></p><p><font size=\"3\">共 4 节 (17分钟)&nbsp;收起列表</font></p><ul><li><font size=\"3\"><i></i>&nbsp;1-1 课前必读</font></li><li><font size=\"3\"><i></i>&nbsp;1-2 课程介绍与学习指南 (10:21)</font></li><li><font size=\"3\"><i></i>&nbsp;1-3 开发环境准备 (03:21)</font></li><li><font size=\"3\"><i></i>&nbsp;1-4 如何利用源码进行学习 (02:35)</font></li></ul></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第2章 Spring Boot项目搭建</font></h5><p><font size=\"3\">项目后端Spring Boot项目架构搭建，完成项目的工程配置，如：Git, Maven, 日志优化, 测试接口, 配置文件, 集成热部署等。</font></p><p><font size=\"3\">共 11 节 (86分钟)&nbsp;收起列表</font></p><ul><li><font size=\"3\"><i></i>&nbsp;2-1 本章介绍 (01:35)</font></li><li><font size=\"3\"><i></i>&nbsp;2-2 新建SpringBoot项目【标准SpringBoot项目目录结构】 (13:35)</font></li><li><font size=\"3\"><i></i>&nbsp;2-3 项目初始配置 (07:50)</font></li><li><font size=\"3\"><i></i>&nbsp;2-4 代码关联Git远程仓库 (10:45)</font></li><li><font size=\"3\"><i></i>&nbsp;2-5 启动日志优化 (09:38)</font></li><li><font size=\"3\"><i></i>&nbsp;2-6 开发Hello World接口 (13:44)</font></li><li><font size=\"3\"><i></i>&nbsp;2-7 使用HTTP Client测试接口 (10:11)</font></li><li><font size=\"3\"><i></i>&nbsp;2-8 SpringBoot配置文件【自定义配置项】 (12:05)</font></li><li><font size=\"3\"><i></i>&nbsp;2-9 集成热部署 (06:19)</font></li><li><font size=\"3\"><i></i>&nbsp;2-10 思考：高频面试题（持续更新）</font></li><li><font size=\"3\"><i></i>&nbsp;2-11 总结：本章知识点梳理（持续更新）</font></li></ul></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第3章 后端架构完善与接口开发</font></h5><p><font size=\"3\">本章将集成MyBatis及其官方代码生成器Generator，高效开发持久层代码，实现数据库查询接口，在此过程中，你将掌握拦截器、过滤器、AOP等Spring Boot核心组件。</font></p><p><font size=\"3\">共 10 节 (83分钟)&nbsp;收起列表</font></p><ul><li><font size=\"3\"><i></i>&nbsp;3-1 本章介绍 (00:58)</font></li><li><font size=\"3\"><i></i>&nbsp;3-2 数据库准备 (10:02)</font></li><li><font size=\"3\"><i></i>&nbsp;3-3 IDEA数据库插件配置 (08:42)</font></li><li><font size=\"3\"><i></i>&nbsp;3-4 集成持久层框架Mybatis (16:51)</font></li><li><font size=\"3\"><i></i>&nbsp;3-5 集成Mybatis官方代码生成器 (16:20)</font></li><li><font size=\"3\"><i></i>&nbsp;3-6 电子书列表查询接口开发 (10:29)</font></li><li><font size=\"3\"><i></i>&nbsp;3-7 封装请求参数和返回参数 (12:53)</font></li><li><font size=\"3\"><i></i>&nbsp;3-8 制作CopyUtil封装BeanUtils (06:23)</font></li><li><font size=\"3\"><i></i>&nbsp;3-9 思考：高频面试题（持续更新）</font></li><li><font size=\"3\"><i></i>&nbsp;3-10 总结：本章知识点梳理（持续更新）</font></li></ul></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第4章 Vue3 + Vue CLI 项目搭建</font></h5><p><font size=\"3\">本章将完成项目前端模块搭建，创建Vue CLI 项目Web，集成支持Vue3的UI组件库Ant Design Vue，完成网站页面基本布局，集成Vue-Router路由组件。</font></p><p><font size=\"3\">共 9 节 (64分钟)&nbsp;收起列表</font></p><ul><li><font size=\"3\"><i></i>&nbsp;4-1 本章介绍 (01:12)</font></li><li><font size=\"3\"><i></i>&nbsp;4-2 了解Vue和Vue CLI及其关系 (04:29)</font></li><li><font size=\"3\"><i></i>&nbsp;4-3 创建Vue CLI项目 (10:25)</font></li><li><font size=\"3\"><i></i>&nbsp;4-4 Vue CLI项目结构解析 (10:15)</font></li><li><font size=\"3\"><i></i>&nbsp;4-5 集成Ant Design Vue (10:19)</font></li><li><font size=\"3\"><i></i>&nbsp;4-6 网站首页布局开发 (16:02)</font></li><li><font size=\"3\"><i></i>&nbsp;4-7 制作Vue自定义组件 (11:04)</font></li><li><font size=\"3\"><i></i>&nbsp;4-8 思考：高频面试题（持续更新）</font></li><li><font size=\"3\"><i></i>&nbsp;4-9 总结：本章知识点梳理（持续更新）</font></li></ul></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第5章 前后端交互整合</font></h5><p><font size=\"3\">本章将完成前后端功能整合，集成HTTP组件Axios，解决前后端分离架构中常见的问题，如跨域、参数传递、多环境配置等。</font></p><p><font size=\"3\">共 11 节 (89分钟)&nbsp;收起列表</font></p><ul><li><font size=\"3\"><i></i>&nbsp;5-1 本章介绍 (01:52)</font></li><li><font size=\"3\"><i></i>&nbsp;5-2 集成HTTP库Axios (12:03)</font></li><li><font size=\"3\"><i></i>&nbsp;5-3 Vue3数据绑定显示列表数据 (14:04)</font></li><li><font size=\"3\"><i></i>&nbsp;5-4 电子书列表界面展示 (20:28)</font></li><li><font size=\"3\"><i></i>&nbsp;5-5 Vue CLI多环境配置 (13:02)</font></li><li><font size=\"3\"><i></i>&nbsp;5-6 使用Axios拦截器打印前端日志 (06:01)</font></li><li><font size=\"3\"><i></i>&nbsp;5-7 SpringBoot过滤器的使用 (04:50)</font></li><li><font size=\"3\"><i></i>&nbsp;5-8 SpringBoot拦截器的使用 (06:57)</font></li><li><font size=\"3\"><i></i>&nbsp;5-9 SpringBoot AOP的使用 (09:06)</font></li><li><font size=\"3\"><i></i>&nbsp;5-10 思考：高频面试题（持续更新）</font></li><li><font size=\"3\"><i></i>&nbsp;5-11 总结：本章知识点梳理（持续更新）</font></li></ul></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第6章 电子书管理功能开发</font></h5><p><font size=\"3\">本章将完成电子书管理功能开发，学习单表管理功能设计，包括页面设计、接口设计等，集成MyBatis分页插件PageHelper，后端校验框架Validation，统一异常处理等。</font></p><p><font size=\"3\">共 14 节 (133分钟)&nbsp;收起列表</font></p><ul><li><font size=\"3\"><i></i>&nbsp;6-1 本章介绍 (02:06)</font></li><li><font size=\"3\"><i></i>&nbsp;6-2 增加电子书管理页面 (08:32)</font></li><li><font size=\"3\"><i></i>&nbsp;6-3 电子书表格展示 (13:31)</font></li><li><font size=\"3\"><i></i>&nbsp;6-4 使用PageHelper实现后端分页 (08:58)</font></li><li><font size=\"3\"><i></i>&nbsp;6-5 封装分页请求参数和返回参数 (11:32)</font></li><li><font size=\"3\"><i></i>&nbsp;6-6 前后端分页功能整合 (13:59)</font></li><li><font size=\"3\"><i></i>&nbsp;6-7 制作电子书表单 (09:14)</font></li><li><font size=\"3\"><i></i>&nbsp;6-8 完成电子书编辑功能 (16:36)</font></li><li><font size=\"3\"><i></i>&nbsp;6-9 雪花算法与新增功能 (13:57)</font></li><li><font size=\"3\"><i></i>&nbsp;6-10 增加删除电子书功能 (09:33)</font></li><li><font size=\"3\"><i></i>&nbsp;6-11 集成Validation做参数校验 (14:29)</font></li><li><font size=\"3\"><i></i>&nbsp;6-12 电子书管理功能优化 (09:37)</font></li><li><font size=\"3\"><i></i>&nbsp;6-13 思考：高频面试题（持续更新）</font></li><li><font size=\"3\"><i></i>&nbsp;6-14 总结：本章知识点梳理（持续更新）</font></li></ul></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第7章 分类管理功能开发</font></h5><p><font size=\"3\">本章将完成分类管理功能开发，实现慕课网教程的两级分类，你将掌握基础树形功能设计，包括表设计、页面设计等。</font></p></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第8章 文档管理功能开发</font></h5><p><font size=\"3\">本章将完成文档管理功能开发，你将掌握无限级树功能设计，表结构如何设计，树节点的增删改查功能如何设计等，本章还将集成轻量级富文本框wangEditor，支持在知识库中插入图片、视频等。</font></p></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第9章 用户管理&amp;单点登录</font></h5><p><font size=\"3\">本章将实现用户管理，对接分布式缓存Redis，实现用户登录及登录校验。为了保障网站数据安全，实现登录成功的用户才可进入相关的管理页面逻辑，对相关的增删改查接口增加登录校验等处理。</font></p></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第10章 阅读量&amp;点赞量</font></h5><p><font size=\"3\">本章将完成文档阅读数、点赞数功能开发。你将掌握Spring Boot定时任务的实践应用。</font></p></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第11章 知识库功能开发</font></h5><p><font size=\"3\">本章将完成知识库功能开发，集成WebSocket完成网站通知，增加数据统计并集成报表组件ECharts完成相关报表展示，丰富首页内容等。本章还将学习SpringBoot异步解耦相关知识，包括自带的异步线程，集成RocketMQ等。</font></p></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第12章 项目部署发布</font></h5><p><font size=\"3\">本章将带你完成电子书系统的最后一个环节，将项目部署到阿里云上，后端打成jar包发布，前端使用Nginx发布。所有的部署操作，包括传文件，执行命令，全部在IDEA里面完成，不依赖第三方软件，带大家感受IDEA的强大。</font></p></li><li><font size=\"3\"><i></i></font><h5><font size=\"3\">第13章 课程总结</font></h5><p><font size=\"3\">本章作为课程的最后一章，将带你整体梳理课程所学的内容，提供一些后续的学习建议，在课程问答区老师等着与你进一步交流。</font></p></li></ul><p><font size=\"3\">本课程持续更新中</font></p>');
INSERT INTO `content` VALUES (4, '');
INSERT INTO `content` VALUES (5, '');
INSERT INTO `content` VALUES (6, '');
INSERT INTO `content` VALUES (8003033552261120, '');
INSERT INTO `content` VALUES (8469906341367808, '<p>test</p>');
INSERT INTO `content` VALUES (8495756419928064, '');
INSERT INTO `content` VALUES (8495828981387264, '<p><b><font size=\"3\" style=\"\" color=\"#f9963b\">视频课程主页：<a href=\"https://coding.imooc.com/class/416.html\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">https://coding.imooc.com/class/416.html</a></font></b></p><p><br></p><h1>全网稀缺的在线视频系统开发课程<br>仿慕课网构建视频学习网站+管理后台</h1><h4>真正意义上的“完整”项目实战&nbsp;&nbsp;&nbsp;&nbsp;从0开始搭建你的高质量作品</h4><p><br></p><p>项目前台视频学习网站展示<br>（一套代码，多端适配）</p><p><br></p><p>管理后台效果展示</p><p><a href=\"http://www.courseimooc.com/list\" target=\"_blank\">点击体验项目</a></p><h1>企业级项目真实开发流程&nbsp;&nbsp;&nbsp;业务场景一课通</h1><h4>在线视频课程系统功能点全实现&nbsp;&nbsp;&nbsp;&nbsp;体验大厂适用的项目开发流程</h4><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><h1>热门主流框架+全栈技术知识点&nbsp;&nbsp;&nbsp;实战中夯实技能</h1><h4>手把手教学&nbsp;&nbsp;&nbsp;&nbsp;一课掌握前后端技术&nbsp;&nbsp;&nbsp;&nbsp;了解架构设计思维</h4><p><br></p><h1>学员专享增值服务</h1><p><i></i></p><p>问答专区<br>讲师集中答疑</p><p>关于课程的问题都可在问答区随时<br>提问,讲师会进行集中答疑</p><p><i></i></p><p>源码开放<br>整套代码下载</p><p>课程案例代码完全开放给你，你可<br>以根据所学知识，自行修改、优化</p><p><i></i></p><p>讲师精选<br>高效组件/工具</p><p>可直接应用于其它项目中，提升你<br>的开发效率</p><p>适合人群</p><p>想要进入大厂工作的初中级Java开发人员；<br>对全栈技术有需求的开发人员；<br>想要做技术创业的人员</p><p>技术储备要求</p><p>1. Java基础<br>2.MySQL基础<br>3.HTML + CSS+ JavaScript基础</p>');
INSERT INTO `content` VALUES (9101475879981056, '<p>111</p>');
INSERT INTO `content` VALUES (9101726032465920, '');
INSERT INTO `content` VALUES (9102244196782080, '<p>1111</p>');
INSERT INTO `content` VALUES (11695598977814528, '<p>示例网站：wiki.courseimooc.com，test/test</p>');
INSERT INTO `content` VALUES (11695846093623296, ' <p>课程主页：<a href=\"https://coding.imooc.com/class/474.html\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">《SpringBoot知识体系+Vue3全家桶 前后端分离 实战WIKI知识库系统》</a></p>');
INSERT INTO `content` VALUES (11695957502726144, '<p>以下这些软件都可以在QQ群里下载</p><p><b>ideaIU-2019.2.3.exe</b><br>推荐先学一下免费课：<a href=\"https://www.imooc.com/learn/1160\" target=\"_blank\">《开发工具IDEA从入门到爱不释手》</a><br><br><b>Mysql8.0 / 5.7</b><br><br><b>Git-2.23.0-64-bit.exe</b><br><br><b>node-v12.10.0-x64.msi</b><br><br><b>jdk-8u221-windows-x64.exe / jdk-8u202-linux-x64.tar.gz</b></p>');
INSERT INTO `content` VALUES (11696744987496448, '');
INSERT INTO `content` VALUES (11697648637710336, '');
INSERT INTO `content` VALUES (11697820608368640, '');
INSERT INTO `content` VALUES (11698009515626496, '');
INSERT INTO `content` VALUES (11698170870501376, '');
INSERT INTO `content` VALUES (11698779396902912, '');
INSERT INTO `content` VALUES (11698954530066432, '');
INSERT INTO `content` VALUES (11699069433024512, '');
INSERT INTO `content` VALUES (15607155277303808, '');
INSERT INTO `content` VALUES (15607919550795776, '<ul><li><h5>第1章 课程导学与准备工作</h5><p>本章主要介绍为何要带大家学习一个前后端分离的企业级在线视频系统课程，通过本课程学习不仅会掌握Spring Cloud+Vue前后端分离架构，还会掌握到视频文件的处理，包括文件上传、断点续传、文件存储、视频点播、视频加密等核心技术，之后会为大家介绍本课程内容具体安排，最后给出如何学好这门课程的一些学习建议。希望大家...</p><p>共 7 节 (70分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;1-1 课前必读（不看会错过一个亿）</li><li><i></i>&nbsp;1-2 课程介绍及学习指导 (15:46)</li><li><i></i>&nbsp;1-3 线上环境体验 (10:38)</li><li><i></i>&nbsp;1-4 代码生成器初体验 (14:38)</li><li><i></i>&nbsp;1-5 开发环境准备 (10:58)</li><li><i></i>&nbsp;1-6 总体架构介绍 (07:33)</li><li><i></i>&nbsp;1-7 如何利用源码进行学习 (09:50)</li></ul></li><li><i></i><h5>第2章 使用Maven搭建SpringCloud项目</h5><p>本章将介绍使用Maven搭建SpringCloud微服务项目，学习微服务核心组件：注册中心Eureka和路由Gateway。</p><p>共 3 节 (47分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;2-1 使用Eureka搭建注册中心 (14:36)</li><li><i></i>&nbsp;2-2 搭建业务模块-system (18:58)</li><li><i></i>&nbsp;2-3 搭建路由模块-gateway (13:05)</li></ul></li><li><i></i><h5>第3章 SpringBoot项目技术整合</h5><p>本章将介绍单个SpringBoot的纯后端应用的搭建，集成Mybatis框架及代码生成器，并集成热部署DevTools，学习单个应用的环境搭建及提高开发效率的准备。</p><p>共 4 节 (79分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;3-1 集成持久层框架Mybatis (22:31)</li><li><i></i>&nbsp;3-2 项目优化 (16:42)</li><li><i></i>&nbsp;3-3 搭建服务模块-server (20:20)</li><li><i></i>&nbsp;3-4 集成mybatis generator (18:33)</li></ul></li><li><i></i><h5>第4章 使用Vue cli 4搭建管理控台</h5><p>本章将介绍Vue cli和bootstrap的使用。Vue是MVVM框架，其代码结构类似于Angular、微信小程序。Bootstrap是一个响应式框架，一套代码可适应PC，手机屏幕。本章使用Vue cli 4 + Bootstrap 3搭建控台管理应用，学习单页面应用搭建及响应式设计。...</p><p>共 4 节 (85分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;4-1 使用vue cli创建admin项目 (14:13)</li><li><i></i>&nbsp;4-2 集成bootstrap后台管理模板ace (25:30)</li><li><i></i>&nbsp;4-3 集成路由vue-router (18:04)</li><li><i></i>&nbsp;4-4 控台欢迎页面开发 (26:33)</li></ul></li><li><i></i><h5>第5章 单表管理功能前后端开发</h5><p>本章将演示控台单表增删改查的前后端开发，重点学习前后端数据交互，Vue ajax库axios的使用，使用Vue自定义组件制作分页组件，Mybatis分页插件pagehelper的使用等功能。介绍常用的公共组件的使用，包括前端确认框、提示框、等待框，后端复制工具类、统一日志AOP等。...</p><p>共 9 节 (199分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;5-1 大章列表查询功能开发1 (21:27)</li><li><i></i>&nbsp;5-2 大章列表查询功能开发2 (19:48)</li><li><i></i>&nbsp;5-3 大章列表查询功能开发3 (22:10)</li><li><i></i>&nbsp;5-4 分页功能开发 (19:28)</li><li><i></i>&nbsp;5-5 前端分页组件的使用 (20:51)</li><li><i></i>&nbsp;5-6 增加新增大章功能 (27:04)</li><li><i></i>&nbsp;5-7 修改删除大章功能 (19:14)</li><li><i></i>&nbsp;5-8 集成前端通用组件 (23:42)</li><li><i></i>&nbsp;5-9 代码优化 (24:50)</li></ul></li><li><i></i><h5>第6章 通用代码生成器开发</h5><p>本章将演示代码生成器的制作，学习模板引擎freemarker的使用。通过代码生成器可以快速生成dto、service、controller和vue界面代码，再配合上mybatis generator，可以快速完成单表的增删改查管理功能，极大的提高开发效率。另外，本章的知识也可应用于静态页面生成、导出复杂excel等涉及文件生成的场景。...</p><p>共 8 节 (125分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;6-1 代码生成器原理介绍 (06:54)</li><li><i></i>&nbsp;6-2 controller层和service层代码生成 (16:16)</li><li><i></i>&nbsp;6-3 dto层代码生成 (14:56)</li><li><i></i>&nbsp;6-4 前端vue界面代码生成 (19:30)</li><li><i></i>&nbsp;6-5 字段校验和通用字段的处理 (22:25)</li><li><i></i>&nbsp;6-6 前端枚举代码生成 (24:40)</li><li><i></i>&nbsp;6-7 生成器综合示例 (15:16)</li><li><i></i>&nbsp;6-8 生成器升级作业 (04:52)</li></ul></li><li><i></i><h5>第7章 核心业务功能开发</h5><p>本章将演示核心业务功能开发，包括课程、章、节、分类的管理功能，学习前端页面跳转及参数传递，Vue过滤器，前端树形展示插件zTree，富文本框的使用，Spring事务，通用排序功能解决方案等。</p><p>共 7 节 (161分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;7-1 课程管理功能开发 (29:27)</li><li><i></i>&nbsp;7-2 课程时长的保存和显示 (18:51)</li><li><i></i>&nbsp;7-3 分类管理功能开发 (27:14)</li><li><i></i>&nbsp;7-4 课程和分类关联保存和显示 (27:19)</li><li><i></i>&nbsp;7-5 课程内容功能开发 (17:32)</li><li><i></i>&nbsp;7-6 课程代码优化 (18:25)</li><li><i></i>&nbsp;7-7 讲师管理功能开发 (21:35)</li></ul></li><li><i></i><h5>第8章 文件上传功能开发</h5><p>本章将演示文件模块的开发，会使用SpringBoot + Vue完成文件上传功能，上传的图片支持实时预览显示。文件上传是系统操作中常见的功能，文件有大有小，不可避免带来带宽的问题，单独的文件模块很好的解决这个问题。</p><p>共 8 节 (111分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;8-1 完成基本的文件上传功能 (17:08)</li><li><i></i>&nbsp;8-2 讲师头像的保存与显示 (09:49)</li><li><i></i>&nbsp;8-3 文件上传组件开发1 (11:27)</li><li><i></i>&nbsp;8-4 文件上传组件开发2 (12:42)</li><li><i></i>&nbsp;8-5 增加文件管理功能1 (11:16)</li><li><i></i>&nbsp;8-6 增加文件管理功能2 (11:15)</li><li><i></i>&nbsp;8-7 文件上传组件的使用 (16:22)</li><li><i></i>&nbsp;8-8 作业讲解：课程内容中增加文件管理 (20:07)</li></ul></li><li><i></i><h5>第9章 大文件断点续与极速秒传</h5><p>本章将在上一章的基础上增加大文件断点续传功能。作为一个视频网站，一个文件从几十M到上G，上传一个大文件受网络影响很大，一次上传成功的几率很小，为此我们会在本章完善文件上传功能，支持断点续传并且上传文件时，检查文件是否上传过实现极速秒传。...</p><p>共 6 节 (99分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;9-1 分片传输的试探 (13:18)</li><li><i></i>&nbsp;9-2 分片上传功能开发1 (19:33)</li><li><i></i>&nbsp;9-3 分片上传功能开发2 (23:45)</li><li><i></i>&nbsp;9-4 分片合并功能开发 (13:07)</li><li><i></i>&nbsp;9-5 分片检查与极速秒传 (24:55)</li><li><i></i>&nbsp;9-6 文件上传流程图 (03:35)</li></ul></li><li><i></i><h5>第10章 基于阿里云OSS的文件上传</h5><p>在线视频课程的核心内容就是视频，保障视频不外泄是程序的重中之重，所以我们需要对视频做加密处理，本章我们选择阿里云视频加密，阿里云视频点播是对OSS的包装，支持防盗链和视频加密。</p><p>共 6 节 (86分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;10-1 阿里云OSS简介 (10:14)</li><li><i></i>&nbsp;10-2 基于OSS接口的文件上传 (20:06)</li><li><i></i>&nbsp;10-3 阿里云视频点播服务介绍 (10:13)</li><li><i></i>&nbsp;10-4 基于OSS原生SDK上传视频到点播1 (19:51)</li><li><i></i>&nbsp;10-5 基于OSS原生SDK上传视频到点播2 (08:57)</li><li><i></i>&nbsp;10-6 视频授权播放功能开发 (16:20)</li></ul></li><li><i></i><h5>第11章 用户管理与登录</h5><p>本章将演示用户管理及控台登录功能的开发，登录拦截是一个管理控台最基本的权限拦截，防止出现未登录用户直接访问控台界面或接口，同时保障系统内部用户的信息安全，介绍单点登录功能的开发，单点登录SSO（Single Sign On）在大型网站设计中非常常见，用户只需要登录一次就可以访问所有相互信任的应用系统，是提升用户体...</p><p>共 8 节 (145分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;11-1 增加用户管理功能 (22:17)</li><li><i></i>&nbsp;11-2 密码的加密传输与加密存储 (20:05)</li><li><i></i>&nbsp;11-3 基本的登录功能开发 (21:41)</li><li><i></i>&nbsp;11-4 退出登录与记住登录 (20:41)</li><li><i></i>&nbsp;11-5 增加登录图形验证码 (17:02)</li><li><i></i>&nbsp;11-6 单点登录功能开发 (18:01)</li><li><i></i>&nbsp;11-7 前后端登录拦截 (17:49)</li><li><i></i>&nbsp;11-8 用户登录流程图 (06:51)</li></ul></li><li><i></i><h5>第12章 通用权限设计</h5><p>本章演示通用权限功能开发，不依赖任何使用第三方框架，使用经典的资源、角色、用户关联，灵活且维护，可以细粒度的控制菜单、按钮、接口的权限，适用于通用后台管理系统的权限管理。</p><p>共 5 节 (106分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;12-1 通用权限解决方案介绍 (15:53)</li><li><i></i>&nbsp;12-2 资源配置管理 (24:27)</li><li><i></i>&nbsp;12-3 角色权限管理 (27:46)</li><li><i></i>&nbsp;12-4 登录时获取资源权限 (17:17)</li><li><i></i>&nbsp;12-5 权限拦截功能开发 (19:51)</li></ul></li><li><i></i><h5>第13章 网站开发</h5><p>本章将制作用于学员使用的网站，学习BootStrap的网站模板的使用，可以让程序员即使不会美工也可以写出漂亮的网站。</p><p>共 13 节 (206分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;13-1 网站模块的搭建 (09:33)</li><li><i></i>&nbsp;13-2 集成bootstrap官方模板 (15:06)</li><li><i></i>&nbsp;13-3 首页开发-1 (12:45)</li><li><i></i>&nbsp;13-4 首页开发-2 (11:39)</li><li><i></i>&nbsp;13-5 课程列表页面开发 (14:06)</li><li><i></i>&nbsp;13-6 分类筛选功能开发 (21:21)</li><li><i></i>&nbsp;13-7 课程详情页面开发 (16:16)</li><li><i></i>&nbsp;13-8 章节显示与视频播放 (19:54)</li><li><i></i>&nbsp;13-9 增加会员注册功能 (15:35)</li><li><i></i>&nbsp;13-10 增加登录与退出登录功能 (23:59)</li><li><i></i>&nbsp;13-11 增加发送短信验证码功能 (16:59)</li><li><i></i>&nbsp;13-12 完善登录注册校验功能 (19:03)</li><li><i></i>&nbsp;13-13 增加立即报名功能 (08:54)</li></ul></li><li><i></i><h5>第14章 项目优化</h5><p>至此整个项目的主框架和主业务都开发完成了，这一章将对项目做一些优化，比如控台报表显示，spring boot多环境配置，缓存的使用等。</p><p>共 4 节 (40分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;14-1 项目初始化 (06:40)</li><li><i></i>&nbsp;14-2 控台欢迎页开发 (11:37)</li><li><i></i>&nbsp;14-3 前后端多环境配置 (14:37)</li><li><i></i>&nbsp;14-4 前后端缓存的使用 (06:25)</li></ul></li><li><i></i><h5>第15章 课程总结</h5><p>本章将带大家回顾总结课程重点难点，在课程问答区老师等着与你进一步交流，有问题欢迎大家到课程问答区提问。</p><p>共 1 节 (4分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;15-1 课程总结 (03:44)</li></ul></li><li><i></i><h5>第16章 项目功能升级</h5><p>本章是对课程做的升级，核心是对部分功能升级优化，比如优化验证码的清晰度，优化登录token超时的问题，关闭播放器模态框时停止播放，还会分享学习Vue事件总线、Vue新增属性的数据绑定等新的技能。</p><p>共 7 节 (86分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;16-1 已提交的代码讲解 (11:23)</li><li><i></i>&nbsp;16-2 验证码图片清晰度优化 (05:37)</li><li><i></i>&nbsp;16-3 Vue CLI多环境编译 (14:55)</li><li><i></i>&nbsp;16-4 新增视频时没有触发绑定 (07:35)</li><li><i></i>&nbsp;16-5 关闭播放器模态框时停止播放 (19:24)</li><li><i></i>&nbsp;16-6 登录token超时优化 (12:26)</li><li><i></i>&nbsp;16-7 Vue事件总线使用案例 (13:54)</li></ul></li><li><i></i><h5>第17章 生产打包与发布</h5><p>本章是对课程做的升级，核心是掌握如何将整个项目发布到生产环境，通过外网来访问，项目演示地址：www.courseimooc.com，控台地址：admin.courseimooc.com 测试用户test/test。</p><p>共 11 节 (167分钟)&nbsp;收起列表</p><ul><li><i></i>&nbsp;17-1 注册中心&amp;配置中心Nacos (14:21)</li><li><i></i>&nbsp;17-2 注册中心&amp;配置中心Nacos2 (13:08)</li><li><i></i>&nbsp;17-3 阿里云部署方案介绍 (03:28)</li><li><i></i>&nbsp;17-4 RDS购买与配置 (17:09)</li><li><i></i>&nbsp;17-5 ECS购买与配置 (12:29)</li><li><i></i>&nbsp;17-6 JDK安装与Nacos安装 (14:10)</li><li><i></i>&nbsp;17-7 后台模块打包与发布1 (14:50)</li><li><i></i>&nbsp;17-8 后台模块打包与发布2 (17:44)</li><li><i></i>&nbsp;17-9 Nginx安装与Vue项目发布 (20:17)</li><li><i></i>&nbsp;17-10 域名配置1 (16:15)</li><li><i></i>&nbsp;17-11 域名配置2 (22:36)</li></ul></li></ul>');
INSERT INTO `content` VALUES (15608974929956864, '<p>原文慕课网手记链接：<a href=\"https://www.imooc.com/article/305407\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">https://www.imooc.com/article/305407</a></p><p><br></p><blockquote><p>面试是每个程序员都逃不过的一环。在我面试过的程序员中，有一半的程序员都描述不好自己做过的项目，有些都讲不到3分钟就结束了，听完我都不知道这个项目是做什么的，所以，决定写下这遍手记，希望对正在找工作的你有所帮助。</p></blockquote><p><br></p><p>在面试过程中，程序员都需要介绍自己做过的项目，有的是在工作中做过的，有的是业余时间完成的，有的是团队合作完成的，有的是个人独立完成的。丰富的开场是赢下面试的基础。我总结了如下几个方面的项目介绍流程，供大家参考：</p><h2>项目描述</h2><p>这一部分可以先总后分，总体介绍下描述下这个项目是做什么的，是否已上线，用户量有多大，然后介绍这个项目分为了哪些模块，如果是微服务，那可以介绍下有哪些应用。这一部分可以让面试官对你做的项目有个大体的了解，有些公司对行业有要求，比如支付公司、银行一般都要求有支付行业的项目经验。</p><h2>团队组成</h2><p>可以这样说：这个项目，加上我，总共多少人，其中几个是开发，几个是测试。也可以说几个前端，几个后端。<br>这一部分可以让面试官了解你这个项目的规模，参与规模大的项目肯定比规模小的项目有优势。</p><h2>角色担当</h2><p>可以这样说：我在团队里担当核心（前端、后端）开发，负责核心模块（核心功能）的开发，比如权限管理模块、登录注册功能、文件上传等。</p><h2>技术架构</h2><p>接着，可以介绍项目中用到的技术，前端用了xx框架，后端用了xx框架，持久层用了xx框架，数据库用的xxx。中间件用到了redis等，除了框架，还可以介绍一些工程化技术，比如jar包依赖使用maven，代码管理使用git等</p><h2>场景解决方案</h2><p>当你介绍完上面的技术架构后，面试官可以会问你：</p><blockquote><p>redis在什么场景中用到？为什么要用redis？<br>为什么用git，不用svn？</p></blockquote><p>所以我们需要提前准备好一些场景，描述一下用什么技术解决什么业务需求。<br>每个项目的场景都不太一样，需要结合各自的项目做准备。<br>比如电商项目，可能有添加购物车，支付，抢购秒杀等场景。<br>比如后台管理系统，可能有单点登录、报表导出等场景。</p><p>以上就是项目介绍的通用框架，在简历中，我们也可以用上面介绍的这个框架来写【项目介绍】。</p><hr><p>很多同学在学习了<a href=\"https://coding.imooc.com/class/416.html?mc_marking=4b3b21b3ff8dd6fc8b2a3fea17e0572c&amp;mc_channel=shouji\">《Spring Cloud + Vue 前后端分离 开发企业级在线视频课程系统》</a>这门课后，都想将这个项目写到简历中，带到面试里，但是不知道该如何介绍。下面我们就以这个项目为例，看看如何介绍这个项目。</p><h2>项目描述</h2><p>这是一个类似慕课网的在线视频课程项目，也可以作为网校平台，项目分为三大块，前端网站+管理控台+服务端。<br><strong>【管理控台】</strong>：供内部运营人员使用，用于管理课程、章节、讲师等核心精选信息，也包含了用户资源权限等系统管理。<br><strong>【前端网站】</strong>：供网站会员使用，可以报名课程之后开始学习课程。<br><strong>【服务端】</strong>：为管理控台和前端网站提供各种接口，具体分为了注册中心、网关路由、系统模块、业务模块、文件模块、公共模块，共6个模块。</p><h2>技术架构</h2><p><img src=\"https://img1.sycdn.imooc.com/5ed765230001b80911930862.png\" alt=\"图片描述\"><br>整个项目采用目前最热门的前后端分离架构<br>管理控台和前端网站使用前端框架Vue CLI<br>UI使用响应式UI Bootstrap，一套页面兼容PC、PAD、移动端<br>服务端使用微服务框架Spring Cloud<br>持久层使用Mybatis框架<br>数据库使用Mysql<br>中间件使用了Redis<br>Jar包管理使用Maven<br>代码管理使用Git。<br>（以上这些技术都是目前企业级项目开发中常用的，需要熟练掌握）<br>同时项目中还用到了阿里云的服务，比如OSS服务，用来存储图片视频；视频点播服务，用来对视频做加密转码并授权播放，保证视频安全。</p><h2>场景解决方案</h2><p><strong>代码生成器</strong>：自己制作了代码生成器，集成到项目中，使用freemarker模板引擎（课程中有介绍怎么制作代码生成器），用于生成service层、controller层，dto层和vue界面代码，配合上mybatis-generator生成持久层代码，极大的提高了开发效率。在一张表设计完成后，只要1分钟，就可完成单表的增删改查管理功能（包含界面）。<br><strong>单点登录</strong>：使用统一登录标识token+分布式缓存redis的方案，实现单点登录。<br><strong>短信验证码注册</strong>：包括了短信验证码生成和验证码校验，并对验证码的时效性做了控制，比如5分钟有效；同一手机号1分钟内只能发送一次验证码；验证码只能使用一次等。<br><strong>图片验证码登录</strong>：使用redis存储验证码，图片验码登录，可以有效防止撞库攻击、暴力破解，保障用户信息安全。<br><strong>权限管理</strong>：使用经典的用户+资源+角色的权限设计方案，适用于绝大多数项目的权限管理，纯手工打造，未使用任何现成的权限框架，代码没有盲区，安全，易扩展。<br><strong>文件上传</strong>：实现基本的Vue+SpringBoot文件上传功能<br><strong>分片上传</strong>：当文件较大时，文件上传受网络影响较大，容易失败。在上面基本的文件上传的基础上，扩展成分片上传，提高大文件的上传成功率。<br><strong>断点续传</strong>：在分片上传的基础上，再扩展出断点续传，当传到某一个分片失败了之后，下次再上传同一文件时，从余下的分片开始上传。<br><strong>极速秒传</strong>：对于同一个文件，上传过一次后，再次上传时，会直接提示极速秒传成功，提高用户体验。<br><strong>文件存储</strong>：项目中实现了两种文件存储方法，一是自己搭建文件服务器，二是使用阿里云OSS服务。（实际项目中推荐使用第二种，大大减少了运维工作）<br><strong>视频加密</strong>：作为视频网站，视频安全是核心功能，这里用到了阿里云的视频点播服务（慕课网也是用的阿里云的视频点播服务）。使用接口直接和阿里云对接，实现控台统一管理<br><strong>授权播放</strong>：视频经过加密后，需要授权，才能播放，这里我们使用阿里云aliplayer+阿里云授权接口，实现授权播放。</p><p>上面我举例了很多场景，实际在面试的时候，不一定要全部介绍，可以挑几个比较熟悉的着重介绍，其它的可以简单带过。</p><h2>团队组成和角色担当</h2><p>如果是一个人跟着课程一步一步做下来的，可以介绍整个项目从框架搭建到前后端代码开发，都是一个人完成的。</p><hr><p>另外，还要自己准备一些常见的面试题，比如：</p><blockquote><p>项目开发过程中遇到过什么问题？<br>这个需要平时积累了，将开发过程中，遇到过的比较难解决的点记录下来，可以这样回答：……这个问题解决后，很有成就感，成就感很重要，听起来有专研精神，不过只适合初中级程序员，高级程序员说成就感就有点掉价。</p></blockquote><blockquote><p>对我们公司有什么问题<br>这个需要提交了解要面试的公司的相关情况，至少让面试的人觉得你对他们公司还是有兴趣的，有提前了解。</p></blockquote><p>最后祝所有的程序员都能面试顺利！</p><p><br>作者：甲蛙<br>链接：https://www.imooc.com/article/305407<br>来源：慕课网<br>本文原创发布于慕课网 ，转载请注明出处，谢谢合作<br></p>');
INSERT INTO `content` VALUES (15609426090266624, '<p>网站：<a href=\"http://www.courseimooc.com\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">http://www.courseimooc.com</a></p><p>控台：<a href=\"http://admin.courseimooc.com\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">http://admin.courseimooc.com</a><span style=\"font-size: 1em;\">，test/test</span></p>');
INSERT INTO `content` VALUES (16136409765253120, '');
INSERT INTO `content` VALUES (16136446662545408, '');
INSERT INTO `content` VALUES (16136469433421824, '');
INSERT INTO `content` VALUES (17072249370710016, '<p>11</p>');
INSERT INTO `content` VALUES (17073294146670592, '');
INSERT INTO `content` VALUES (17078742493040640, '');
INSERT INTO `content` VALUES (18653571339915264, '<p><font color=\"#f9963b\" size=\"4\"><b>视频课程主页：<a href=\"https://www.imooc.com/learn/1160\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">https://www.imooc.com/learn/1160</a></b></font><br></p>');
INSERT INTO `content` VALUES (18994136724148224, '<p><b><font size=\"3\">如果你还没用过云服务，那就落伍了！</font></b></p><p><b><font size=\"3\">每个程序员都应该有一个自己的线上作品</font></b></p><p><b><font size=\"3\">可以是个博客、在线笔记，也可以是像我们这个项目，一个WIKI知识库</font></b></p><p><b style=\"\"><font color=\"#f9963b\" style=\"\" size=\"3\"><br></font></b></p><p><b style=\"\"><font color=\"#f9963b\" style=\"\" size=\"3\">阿里云选购指导、优惠、代金券，可联系QQ：82144921</font></b><br></p><p><font size=\"3\"><b><font color=\"#f9963b\">自助优惠：</font><a href=\"https://partner.aliyun.com/shop/1704506477397431\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">https://partner.aliyun.com/shop/1704506477397431</a></b></font></p><p><font size=\"3\" color=\"#c24f4a\"><b style=\"\"><br></b></font></p><p><font size=\"3\" color=\"#c24f4a\"><b style=\"\">还没注册过阿里云的可以先QQ联系，灰常便宜！！！</b></font></p><p><font color=\"#f9963b\" size=\"3\"><b><br></b></font></p>');

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '测试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES (1, '测试');

-- ----------------------------
-- Table structure for doc
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `ebook_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '电子书id',
  `parent` bigint(20) NOT NULL DEFAULT 0 COMMENT '父id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '顺序',
  `view_count` int(11) NULL DEFAULT 0 COMMENT '阅读数',
  `vote_count` int(11) NULL DEFAULT 0 COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文档' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doc
-- ----------------------------
INSERT INTO `doc` VALUES (1, 1, 0, '课程导学与准备工作', 1, 5000, 205);
INSERT INTO `doc` VALUES (2, 1, 1, 'README.md', 1, 2651, 59);
INSERT INTO `doc` VALUES (3, 1, 0, '所有章节', 2, 1506, 82);
INSERT INTO `doc` VALUES (8495828981387264, 2, 0, '课程介绍', 1, 1607, 110);
INSERT INTO `doc` VALUES (11695598977814528, 1, 1, '线上环境体验', 3, 2295, 36);
INSERT INTO `doc` VALUES (11695846093623296, 1, 1, '课程介绍与视频试看', 2, 2356, 34);
INSERT INTO `doc` VALUES (11695957502726144, 1, 1, '开发环境准备', 4, 2026, 37);
INSERT INTO `doc` VALUES (15607919550795776, 2, 0, '章节介绍', 2, 776, 21);
INSERT INTO `doc` VALUES (15608974929956864, 2, 0, '面试指南之项目介绍', 3, 738, 14);
INSERT INTO `doc` VALUES (15609426090266624, 2, 0, '示例网站', 4, 547, 18);
INSERT INTO `doc` VALUES (17072249370710016, 4, 0, 'test', 1, 5, 0);
INSERT INTO `doc` VALUES (17073294146670592, 4, 0, 'test1', 1, 9, 0);
INSERT INTO `doc` VALUES (17078742493040640, 5, 0, 'test', 1, 1, 0);
INSERT INTO `doc` VALUES (18653571339915264, 3, 0, '课程介绍', 1, 1472, 187);
INSERT INTO `doc` VALUES (18994136724148224, 1, 1, '阿里云购买指导优惠', 0, 2718, 48);

-- ----------------------------
-- Table structure for ebook
-- ----------------------------
DROP TABLE IF EXISTS `ebook`;
CREATE TABLE `ebook`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `category1_id` bigint(20) NULL DEFAULT NULL COMMENT '分类1',
  `category2_id` bigint(20) NULL DEFAULT NULL COMMENT '分类2',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `cover` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `doc_count` int(11) NOT NULL DEFAULT 0 COMMENT '文档数',
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT '阅读数',
  `vote_count` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '电子书' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ebook
-- ----------------------------
INSERT INTO `ebook` VALUES (1, 'SpringBoot知识体系+Vue3', 10, 11, 'SpringBoot知识体系+Vue3前后端分离实战WIKI知识库系统', '/image/cover1.png', 7, 18552, 501);
INSERT INTO `ebook` VALUES (2, 'SpringCloud+Vue前后端分离', 10, 11, 'SpringCloud+Vue前后端分离 开发企业级在线视频课程系统', '/image/cover2.png', 4, 3668, 163);
INSERT INTO `ebook` VALUES (3, '开发工具IDEA从入门到爱不释手', 10, 12, '系统介绍如何高效的使用idea开发项目，从基本操作到高级进阶，是老师多年实战经验的总结', '/image/cover2.png', 1, 1472, 187);

-- ----------------------------
-- Table structure for ebook_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `ebook_snapshot`;
CREATE TABLE `ebook_snapshot`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ebook_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '电子书id',
  `date` date NOT NULL COMMENT '快照日期',
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT '阅读数',
  `vote_count` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `view_increase` int(11) NOT NULL DEFAULT 0 COMMENT '阅读增长',
  `vote_increase` int(11) NOT NULL DEFAULT 0 COMMENT '点赞增长',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ebook_id_date_unique`(`ebook_id`, `date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 488 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '电子书快照表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ebook_snapshot
-- ----------------------------
INSERT INTO `ebook_snapshot` VALUES (50, 1, '2021-02-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (51, 2, '2021-02-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (52, 3, '2021-02-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (53, 4, '2021-02-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (54, 5, '2021-02-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (57, 1, '2021-02-19', 27, 9, 27, 9);
INSERT INTO `ebook_snapshot` VALUES (58, 2, '2021-02-19', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (59, 3, '2021-02-19', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (60, 4, '2021-02-19', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (61, 5, '2021-02-19', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (64, 1, '2021-02-20', 35, 11, 35, 11);
INSERT INTO `ebook_snapshot` VALUES (65, 2, '2021-02-20', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (66, 3, '2021-02-20', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (67, 4, '2021-02-20', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (68, 5, '2021-02-20', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (71, 1, '2021-02-21', 46, 12, 46, 12);
INSERT INTO `ebook_snapshot` VALUES (72, 2, '2021-02-21', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (73, 3, '2021-02-21', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (74, 4, '2021-02-21', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (75, 5, '2021-02-21', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (78, 1, '2021-02-22', 52, 12, 52, 12);
INSERT INTO `ebook_snapshot` VALUES (79, 2, '2021-02-22', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (80, 3, '2021-02-22', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (81, 4, '2021-02-22', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (82, 5, '2021-02-22', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (85, 1, '2021-02-23', 229, 18, 229, 18);
INSERT INTO `ebook_snapshot` VALUES (86, 2, '2021-02-23', 105, 11, 105, 11);
INSERT INTO `ebook_snapshot` VALUES (87, 3, '2021-02-23', 2, 0, 2, 0);
INSERT INTO `ebook_snapshot` VALUES (88, 4, '2021-02-23', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (89, 5, '2021-02-23', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (92, 1, '2021-02-24', 1261, 52, 1261, 52);
INSERT INTO `ebook_snapshot` VALUES (93, 2, '2021-02-24', 328, 21, 328, 21);
INSERT INTO `ebook_snapshot` VALUES (94, 3, '2021-02-24', 82, 5, 82, 5);
INSERT INTO `ebook_snapshot` VALUES (95, 1, '2021-02-25', 1906, 69, 1906, 69);
INSERT INTO `ebook_snapshot` VALUES (96, 2, '2021-02-25', 421, 24, 421, 24);
INSERT INTO `ebook_snapshot` VALUES (97, 3, '2021-02-25', 157, 13, 157, 13);
INSERT INTO `ebook_snapshot` VALUES (98, 1, '2021-02-26', 2312, 87, 2312, 87);
INSERT INTO `ebook_snapshot` VALUES (99, 2, '2021-02-26', 513, 33, 513, 33);
INSERT INTO `ebook_snapshot` VALUES (100, 3, '2021-02-26', 193, 20, 193, 20);
INSERT INTO `ebook_snapshot` VALUES (101, 1, '2021-02-27', 2608, 90, 2608, 90);
INSERT INTO `ebook_snapshot` VALUES (102, 2, '2021-02-27', 594, 35, 594, 35);
INSERT INTO `ebook_snapshot` VALUES (103, 3, '2021-02-27', 223, 23, 223, 23);
INSERT INTO `ebook_snapshot` VALUES (104, 1, '2021-02-28', 2829, 98, 2829, 98);
INSERT INTO `ebook_snapshot` VALUES (105, 2, '2021-02-28', 632, 36, 632, 36);
INSERT INTO `ebook_snapshot` VALUES (106, 3, '2021-02-28', 244, 27, 244, 27);
INSERT INTO `ebook_snapshot` VALUES (107, 1, '2021-03-01', 3121, 107, 3121, 107);
INSERT INTO `ebook_snapshot` VALUES (108, 2, '2021-03-01', 713, 40, 713, 40);
INSERT INTO `ebook_snapshot` VALUES (109, 3, '2021-03-01', 267, 30, 267, 30);
INSERT INTO `ebook_snapshot` VALUES (110, 1, '2021-03-02', 3390, 112, 3390, 112);
INSERT INTO `ebook_snapshot` VALUES (111, 2, '2021-03-02', 757, 41, 757, 41);
INSERT INTO `ebook_snapshot` VALUES (112, 3, '2021-03-02', 296, 36, 296, 36);
INSERT INTO `ebook_snapshot` VALUES (113, 1, '2021-03-03', 3599, 117, 3599, 117);
INSERT INTO `ebook_snapshot` VALUES (114, 2, '2021-03-03', 883, 44, 883, 44);
INSERT INTO `ebook_snapshot` VALUES (115, 3, '2021-03-03', 322, 41, 322, 41);
INSERT INTO `ebook_snapshot` VALUES (116, 1, '2021-03-04', 3964, 127, 3964, 127);
INSERT INTO `ebook_snapshot` VALUES (117, 2, '2021-03-04', 966, 46, 966, 46);
INSERT INTO `ebook_snapshot` VALUES (118, 3, '2021-03-04', 355, 45, 355, 45);
INSERT INTO `ebook_snapshot` VALUES (119, 1, '2021-03-05', 4308, 136, 4308, 136);
INSERT INTO `ebook_snapshot` VALUES (120, 2, '2021-03-05', 1025, 53, 1025, 53);
INSERT INTO `ebook_snapshot` VALUES (121, 3, '2021-03-05', 373, 50, 373, 50);
INSERT INTO `ebook_snapshot` VALUES (122, 1, '2021-03-06', 4431, 138, 4431, 138);
INSERT INTO `ebook_snapshot` VALUES (123, 2, '2021-03-06', 1045, 54, 1045, 54);
INSERT INTO `ebook_snapshot` VALUES (124, 3, '2021-03-06', 383, 52, 383, 52);
INSERT INTO `ebook_snapshot` VALUES (125, 1, '2021-03-07', 4594, 140, 4594, 140);
INSERT INTO `ebook_snapshot` VALUES (126, 2, '2021-03-07', 1069, 55, 1069, 55);
INSERT INTO `ebook_snapshot` VALUES (127, 3, '2021-03-07', 404, 54, 404, 54);
INSERT INTO `ebook_snapshot` VALUES (128, 1, '2021-03-08', 4750, 143, 4750, 143);
INSERT INTO `ebook_snapshot` VALUES (129, 2, '2021-03-08', 1106, 56, 1106, 56);
INSERT INTO `ebook_snapshot` VALUES (130, 3, '2021-03-08', 421, 56, 421, 56);
INSERT INTO `ebook_snapshot` VALUES (131, 1, '2021-03-09', 5000, 147, 5000, 147);
INSERT INTO `ebook_snapshot` VALUES (132, 2, '2021-03-09', 1145, 56, 1145, 56);
INSERT INTO `ebook_snapshot` VALUES (133, 3, '2021-03-09', 437, 57, 437, 57);
INSERT INTO `ebook_snapshot` VALUES (134, 1, '2021-03-10', 5209, 155, 5209, 155);
INSERT INTO `ebook_snapshot` VALUES (135, 2, '2021-03-10', 1195, 59, 1195, 59);
INSERT INTO `ebook_snapshot` VALUES (136, 3, '2021-03-10', 463, 65, 463, 65);
INSERT INTO `ebook_snapshot` VALUES (137, 1, '2021-03-11', 5383, 157, 5383, 157);
INSERT INTO `ebook_snapshot` VALUES (138, 2, '2021-03-11', 1230, 61, 1230, 61);
INSERT INTO `ebook_snapshot` VALUES (139, 3, '2021-03-11', 473, 68, 473, 68);
INSERT INTO `ebook_snapshot` VALUES (140, 1, '2021-03-12', 5627, 161, 5627, 161);
INSERT INTO `ebook_snapshot` VALUES (141, 2, '2021-03-12', 1294, 68, 1294, 68);
INSERT INTO `ebook_snapshot` VALUES (142, 3, '2021-03-12', 490, 69, 490, 69);
INSERT INTO `ebook_snapshot` VALUES (143, 1, '2021-03-13', 5748, 162, 5748, 162);
INSERT INTO `ebook_snapshot` VALUES (144, 2, '2021-03-13', 1305, 69, 1305, 69);
INSERT INTO `ebook_snapshot` VALUES (145, 3, '2021-03-13', 492, 69, 492, 69);
INSERT INTO `ebook_snapshot` VALUES (146, 1, '2021-03-14', 5832, 164, 5832, 164);
INSERT INTO `ebook_snapshot` VALUES (147, 2, '2021-03-14', 1314, 69, 1314, 69);
INSERT INTO `ebook_snapshot` VALUES (148, 3, '2021-03-14', 498, 71, 498, 71);
INSERT INTO `ebook_snapshot` VALUES (149, 1, '2021-03-15', 6044, 169, 6044, 169);
INSERT INTO `ebook_snapshot` VALUES (150, 2, '2021-03-15', 1347, 71, 1347, 71);
INSERT INTO `ebook_snapshot` VALUES (151, 3, '2021-03-15', 509, 72, 509, 72);
INSERT INTO `ebook_snapshot` VALUES (152, 1, '2021-03-16', 6353, 174, 6353, 174);
INSERT INTO `ebook_snapshot` VALUES (153, 2, '2021-03-16', 1408, 72, 1408, 72);
INSERT INTO `ebook_snapshot` VALUES (154, 3, '2021-03-16', 540, 74, 540, 74);
INSERT INTO `ebook_snapshot` VALUES (155, 1, '2021-03-17', 6495, 177, 6495, 177);
INSERT INTO `ebook_snapshot` VALUES (156, 2, '2021-03-17', 1426, 72, 1426, 72);
INSERT INTO `ebook_snapshot` VALUES (157, 3, '2021-03-17', 547, 74, 547, 74);
INSERT INTO `ebook_snapshot` VALUES (158, 1, '2021-03-18', 6595, 182, 6595, 182);
INSERT INTO `ebook_snapshot` VALUES (159, 2, '2021-03-18', 1442, 72, 1442, 72);
INSERT INTO `ebook_snapshot` VALUES (160, 3, '2021-03-18', 560, 75, 560, 75);
INSERT INTO `ebook_snapshot` VALUES (161, 1, '2021-03-19', 6752, 185, 6752, 185);
INSERT INTO `ebook_snapshot` VALUES (162, 2, '2021-03-19', 1464, 72, 1464, 72);
INSERT INTO `ebook_snapshot` VALUES (163, 3, '2021-03-19', 573, 75, 573, 75);
INSERT INTO `ebook_snapshot` VALUES (164, 1, '2021-03-20', 6909, 187, 6909, 187);
INSERT INTO `ebook_snapshot` VALUES (165, 2, '2021-03-20', 1481, 73, 1481, 73);
INSERT INTO `ebook_snapshot` VALUES (166, 3, '2021-03-20', 582, 76, 582, 76);
INSERT INTO `ebook_snapshot` VALUES (167, 1, '2021-03-21', 7037, 190, 7037, 190);
INSERT INTO `ebook_snapshot` VALUES (168, 2, '2021-03-21', 1499, 74, 1499, 74);
INSERT INTO `ebook_snapshot` VALUES (169, 3, '2021-03-21', 594, 77, 594, 77);
INSERT INTO `ebook_snapshot` VALUES (170, 1, '2021-03-22', 7172, 192, 7172, 192);
INSERT INTO `ebook_snapshot` VALUES (171, 2, '2021-03-22', 1520, 75, 1520, 75);
INSERT INTO `ebook_snapshot` VALUES (172, 3, '2021-03-22', 608, 77, 608, 77);
INSERT INTO `ebook_snapshot` VALUES (173, 1, '2021-03-23', 7441, 199, 7441, 199);
INSERT INTO `ebook_snapshot` VALUES (174, 2, '2021-03-23', 1599, 76, 1599, 76);
INSERT INTO `ebook_snapshot` VALUES (175, 3, '2021-03-23', 629, 82, 629, 82);
INSERT INTO `ebook_snapshot` VALUES (176, 1, '2021-03-24', 7596, 202, 7596, 202);
INSERT INTO `ebook_snapshot` VALUES (177, 2, '2021-03-24', 1644, 77, 1644, 77);
INSERT INTO `ebook_snapshot` VALUES (178, 3, '2021-03-24', 645, 84, 645, 84);
INSERT INTO `ebook_snapshot` VALUES (179, 1, '2021-03-25', 7732, 204, 7732, 204);
INSERT INTO `ebook_snapshot` VALUES (180, 2, '2021-03-25', 1677, 78, 1677, 78);
INSERT INTO `ebook_snapshot` VALUES (181, 3, '2021-03-25', 657, 85, 657, 85);
INSERT INTO `ebook_snapshot` VALUES (182, 1, '2021-03-26', 7883, 208, 7883, 208);
INSERT INTO `ebook_snapshot` VALUES (183, 2, '2021-03-26', 1693, 79, 1693, 79);
INSERT INTO `ebook_snapshot` VALUES (184, 3, '2021-03-26', 666, 86, 666, 86);
INSERT INTO `ebook_snapshot` VALUES (185, 1, '2021-03-27', 7984, 213, 7984, 213);
INSERT INTO `ebook_snapshot` VALUES (186, 2, '2021-03-27', 1709, 79, 1709, 79);
INSERT INTO `ebook_snapshot` VALUES (187, 3, '2021-03-27', 676, 87, 676, 87);
INSERT INTO `ebook_snapshot` VALUES (188, 1, '2021-03-28', 8116, 222, 8116, 222);
INSERT INTO `ebook_snapshot` VALUES (189, 2, '2021-03-28', 1748, 79, 1748, 79);
INSERT INTO `ebook_snapshot` VALUES (190, 3, '2021-03-28', 688, 88, 688, 88);
INSERT INTO `ebook_snapshot` VALUES (191, 1, '2021-03-29', 8333, 228, 8333, 228);
INSERT INTO `ebook_snapshot` VALUES (192, 2, '2021-03-29', 1798, 82, 1798, 82);
INSERT INTO `ebook_snapshot` VALUES (193, 3, '2021-03-29', 707, 91, 707, 91);
INSERT INTO `ebook_snapshot` VALUES (194, 1, '2021-03-30', 8562, 230, 8562, 230);
INSERT INTO `ebook_snapshot` VALUES (195, 2, '2021-03-30', 1827, 82, 1827, 82);
INSERT INTO `ebook_snapshot` VALUES (196, 3, '2021-03-30', 724, 93, 724, 93);
INSERT INTO `ebook_snapshot` VALUES (197, 1, '2021-03-31', 8741, 235, 8741, 235);
INSERT INTO `ebook_snapshot` VALUES (198, 2, '2021-03-31', 1851, 85, 1851, 85);
INSERT INTO `ebook_snapshot` VALUES (199, 3, '2021-03-31', 735, 95, 735, 95);
INSERT INTO `ebook_snapshot` VALUES (200, 1, '2021-04-01', 8970, 245, 8970, 245);
INSERT INTO `ebook_snapshot` VALUES (201, 2, '2021-04-01', 1895, 85, 1895, 85);
INSERT INTO `ebook_snapshot` VALUES (202, 3, '2021-04-01', 754, 96, 754, 96);
INSERT INTO `ebook_snapshot` VALUES (203, 1, '2021-04-02', 9090, 248, 9090, 248);
INSERT INTO `ebook_snapshot` VALUES (204, 2, '2021-04-02', 1922, 86, 1922, 86);
INSERT INTO `ebook_snapshot` VALUES (205, 3, '2021-04-02', 769, 100, 769, 100);
INSERT INTO `ebook_snapshot` VALUES (206, 1, '2021-04-03', 9147, 249, 9147, 249);
INSERT INTO `ebook_snapshot` VALUES (207, 2, '2021-04-03', 1930, 86, 1930, 86);
INSERT INTO `ebook_snapshot` VALUES (208, 3, '2021-04-03', 779, 103, 779, 103);
INSERT INTO `ebook_snapshot` VALUES (209, 1, '2021-04-04', 9426, 253, 9426, 253);
INSERT INTO `ebook_snapshot` VALUES (210, 2, '2021-04-04', 1967, 91, 1967, 91);
INSERT INTO `ebook_snapshot` VALUES (211, 3, '2021-04-04', 792, 105, 792, 105);
INSERT INTO `ebook_snapshot` VALUES (212, 1, '2021-04-05', 9519, 254, 9519, 254);
INSERT INTO `ebook_snapshot` VALUES (213, 2, '2021-04-05', 1992, 93, 1992, 93);
INSERT INTO `ebook_snapshot` VALUES (214, 3, '2021-04-05', 797, 107, 797, 107);
INSERT INTO `ebook_snapshot` VALUES (215, 1, '2021-04-06', 9803, 258, 9803, 258);
INSERT INTO `ebook_snapshot` VALUES (216, 2, '2021-04-06', 2036, 93, 2036, 93);
INSERT INTO `ebook_snapshot` VALUES (217, 3, '2021-04-06', 812, 107, 812, 107);
INSERT INTO `ebook_snapshot` VALUES (218, 1, '2021-04-07', 10061, 269, 10061, 269);
INSERT INTO `ebook_snapshot` VALUES (219, 2, '2021-04-07', 2095, 95, 2095, 95);
INSERT INTO `ebook_snapshot` VALUES (220, 3, '2021-04-07', 826, 110, 826, 110);
INSERT INTO `ebook_snapshot` VALUES (221, 1, '2021-04-08', 10207, 272, 10207, 272);
INSERT INTO `ebook_snapshot` VALUES (222, 2, '2021-04-08', 2135, 98, 2135, 98);
INSERT INTO `ebook_snapshot` VALUES (223, 3, '2021-04-08', 841, 114, 841, 114);
INSERT INTO `ebook_snapshot` VALUES (224, 1, '2021-04-09', 10294, 274, 10294, 274);
INSERT INTO `ebook_snapshot` VALUES (225, 2, '2021-04-09', 2161, 99, 2161, 99);
INSERT INTO `ebook_snapshot` VALUES (226, 3, '2021-04-09', 845, 114, 845, 114);
INSERT INTO `ebook_snapshot` VALUES (227, 1, '2021-04-10', 10361, 275, 10361, 275);
INSERT INTO `ebook_snapshot` VALUES (228, 2, '2021-04-10', 2184, 100, 2184, 100);
INSERT INTO `ebook_snapshot` VALUES (229, 3, '2021-04-10', 854, 115, 854, 115);
INSERT INTO `ebook_snapshot` VALUES (230, 1, '2021-04-11', 10505, 279, 10505, 279);
INSERT INTO `ebook_snapshot` VALUES (231, 2, '2021-04-11', 2206, 100, 2206, 100);
INSERT INTO `ebook_snapshot` VALUES (232, 3, '2021-04-11', 862, 115, 862, 115);
INSERT INTO `ebook_snapshot` VALUES (233, 1, '2021-04-12', 10626, 280, 10626, 280);
INSERT INTO `ebook_snapshot` VALUES (234, 2, '2021-04-12', 2229, 101, 2229, 101);
INSERT INTO `ebook_snapshot` VALUES (235, 3, '2021-04-12', 874, 116, 874, 116);
INSERT INTO `ebook_snapshot` VALUES (236, 1, '2021-04-13', 10812, 285, 10812, 285);
INSERT INTO `ebook_snapshot` VALUES (237, 2, '2021-04-13', 2266, 101, 2266, 101);
INSERT INTO `ebook_snapshot` VALUES (238, 3, '2021-04-13', 890, 118, 890, 118);
INSERT INTO `ebook_snapshot` VALUES (239, 1, '2021-04-14', 10996, 292, 10996, 292);
INSERT INTO `ebook_snapshot` VALUES (240, 2, '2021-04-14', 2311, 103, 2311, 103);
INSERT INTO `ebook_snapshot` VALUES (241, 3, '2021-04-14', 899, 118, 899, 118);
INSERT INTO `ebook_snapshot` VALUES (242, 1, '2021-04-15', 11164, 296, 11164, 296);
INSERT INTO `ebook_snapshot` VALUES (243, 2, '2021-04-15', 2340, 104, 2340, 104);
INSERT INTO `ebook_snapshot` VALUES (244, 3, '2021-04-15', 921, 120, 921, 120);
INSERT INTO `ebook_snapshot` VALUES (245, 1, '2021-04-16', 11262, 299, 11262, 299);
INSERT INTO `ebook_snapshot` VALUES (246, 2, '2021-04-16', 2351, 104, 2351, 104);
INSERT INTO `ebook_snapshot` VALUES (247, 3, '2021-04-16', 927, 121, 927, 121);
INSERT INTO `ebook_snapshot` VALUES (248, 1, '2021-04-17', 11375, 304, 11375, 304);
INSERT INTO `ebook_snapshot` VALUES (249, 2, '2021-04-17', 2362, 105, 2362, 105);
INSERT INTO `ebook_snapshot` VALUES (250, 3, '2021-04-17', 943, 124, 943, 124);
INSERT INTO `ebook_snapshot` VALUES (251, 1, '2021-04-18', 11458, 306, 11458, 306);
INSERT INTO `ebook_snapshot` VALUES (252, 2, '2021-04-18', 2366, 106, 2366, 106);
INSERT INTO `ebook_snapshot` VALUES (253, 3, '2021-04-18', 952, 124, 952, 124);
INSERT INTO `ebook_snapshot` VALUES (254, 1, '2021-04-19', 11632, 311, 11632, 311);
INSERT INTO `ebook_snapshot` VALUES (255, 2, '2021-04-19', 2413, 108, 2413, 108);
INSERT INTO `ebook_snapshot` VALUES (256, 3, '2021-04-19', 965, 125, 965, 125);
INSERT INTO `ebook_snapshot` VALUES (257, 1, '2021-04-20', 11740, 311, 11740, 311);
INSERT INTO `ebook_snapshot` VALUES (258, 2, '2021-04-20', 2417, 108, 2417, 108);
INSERT INTO `ebook_snapshot` VALUES (259, 3, '2021-04-20', 968, 125, 968, 125);
INSERT INTO `ebook_snapshot` VALUES (260, 1, '2021-04-21', 11919, 317, 11919, 317);
INSERT INTO `ebook_snapshot` VALUES (261, 2, '2021-04-21', 2434, 108, 2434, 108);
INSERT INTO `ebook_snapshot` VALUES (262, 3, '2021-04-21', 979, 125, 979, 125);
INSERT INTO `ebook_snapshot` VALUES (263, 1, '2021-04-22', 11997, 321, 11997, 321);
INSERT INTO `ebook_snapshot` VALUES (264, 2, '2021-04-22', 2439, 108, 2439, 108);
INSERT INTO `ebook_snapshot` VALUES (265, 3, '2021-04-22', 981, 126, 981, 126);
INSERT INTO `ebook_snapshot` VALUES (266, 1, '2021-04-23', 12097, 322, 12097, 322);
INSERT INTO `ebook_snapshot` VALUES (267, 2, '2021-04-23', 2452, 108, 2452, 108);
INSERT INTO `ebook_snapshot` VALUES (268, 3, '2021-04-23', 991, 127, 991, 127);
INSERT INTO `ebook_snapshot` VALUES (269, 1, '2021-04-24', 12183, 322, 12183, 322);
INSERT INTO `ebook_snapshot` VALUES (270, 2, '2021-04-24', 2464, 108, 2464, 108);
INSERT INTO `ebook_snapshot` VALUES (271, 3, '2021-04-24', 998, 127, 998, 127);
INSERT INTO `ebook_snapshot` VALUES (272, 1, '2021-04-25', 12347, 326, 12347, 326);
INSERT INTO `ebook_snapshot` VALUES (273, 2, '2021-04-25', 2479, 108, 2479, 108);
INSERT INTO `ebook_snapshot` VALUES (274, 3, '2021-04-25', 1008, 129, 1008, 129);
INSERT INTO `ebook_snapshot` VALUES (275, 1, '2021-04-26', 12487, 329, 12487, 329);
INSERT INTO `ebook_snapshot` VALUES (276, 2, '2021-04-26', 2484, 109, 2484, 109);
INSERT INTO `ebook_snapshot` VALUES (277, 3, '2021-04-26', 1016, 130, 1016, 130);
INSERT INTO `ebook_snapshot` VALUES (278, 1, '2021-04-27', 12564, 330, 12564, 330);
INSERT INTO `ebook_snapshot` VALUES (279, 2, '2021-04-27', 2494, 109, 2494, 109);
INSERT INTO `ebook_snapshot` VALUES (280, 3, '2021-04-27', 1022, 130, 1022, 130);
INSERT INTO `ebook_snapshot` VALUES (281, 1, '2021-04-28', 12615, 330, 12615, 330);
INSERT INTO `ebook_snapshot` VALUES (282, 2, '2021-04-28', 2504, 109, 2504, 109);
INSERT INTO `ebook_snapshot` VALUES (283, 3, '2021-04-28', 1025, 131, 1025, 131);
INSERT INTO `ebook_snapshot` VALUES (284, 1, '2021-04-29', 12712, 336, 12712, 336);
INSERT INTO `ebook_snapshot` VALUES (285, 2, '2021-04-29', 2523, 109, 2523, 109);
INSERT INTO `ebook_snapshot` VALUES (286, 3, '2021-04-29', 1035, 133, 1035, 133);
INSERT INTO `ebook_snapshot` VALUES (287, 1, '2021-04-30', 12749, 337, 12749, 337);
INSERT INTO `ebook_snapshot` VALUES (288, 2, '2021-04-30', 2535, 109, 2535, 109);
INSERT INTO `ebook_snapshot` VALUES (289, 3, '2021-04-30', 1040, 134, 1040, 134);
INSERT INTO `ebook_snapshot` VALUES (290, 1, '2021-05-01', 12768, 337, 12768, 337);
INSERT INTO `ebook_snapshot` VALUES (291, 2, '2021-05-01', 2538, 109, 2538, 109);
INSERT INTO `ebook_snapshot` VALUES (292, 3, '2021-05-01', 1041, 134, 1041, 134);
INSERT INTO `ebook_snapshot` VALUES (293, 1, '2021-05-02', 12823, 337, 12823, 337);
INSERT INTO `ebook_snapshot` VALUES (294, 2, '2021-05-02', 2542, 109, 2542, 109);
INSERT INTO `ebook_snapshot` VALUES (295, 3, '2021-05-02', 1047, 134, 1047, 134);
INSERT INTO `ebook_snapshot` VALUES (296, 1, '2021-05-03', 12913, 341, 12913, 341);
INSERT INTO `ebook_snapshot` VALUES (297, 2, '2021-05-03', 2564, 110, 2564, 110);
INSERT INTO `ebook_snapshot` VALUES (298, 3, '2021-05-03', 1053, 134, 1053, 134);
INSERT INTO `ebook_snapshot` VALUES (299, 1, '2021-05-04', 12961, 341, 12961, 341);
INSERT INTO `ebook_snapshot` VALUES (300, 2, '2021-05-04', 2583, 111, 2583, 111);
INSERT INTO `ebook_snapshot` VALUES (301, 3, '2021-05-04', 1058, 134, 1058, 134);
INSERT INTO `ebook_snapshot` VALUES (302, 1, '2021-05-05', 13036, 344, 13036, 344);
INSERT INTO `ebook_snapshot` VALUES (303, 2, '2021-05-05', 2609, 111, 2609, 111);
INSERT INTO `ebook_snapshot` VALUES (304, 3, '2021-05-05', 1061, 134, 1061, 134);
INSERT INTO `ebook_snapshot` VALUES (305, 1, '2021-05-06', 13176, 349, 13176, 349);
INSERT INTO `ebook_snapshot` VALUES (306, 2, '2021-05-06', 2633, 112, 2633, 112);
INSERT INTO `ebook_snapshot` VALUES (307, 3, '2021-05-06', 1078, 136, 1078, 136);
INSERT INTO `ebook_snapshot` VALUES (308, 1, '2021-05-07', 13312, 350, 13312, 350);
INSERT INTO `ebook_snapshot` VALUES (309, 2, '2021-05-07', 2645, 112, 2645, 112);
INSERT INTO `ebook_snapshot` VALUES (310, 3, '2021-05-07', 1086, 137, 1086, 137);
INSERT INTO `ebook_snapshot` VALUES (311, 1, '2021-05-08', 13430, 351, 13430, 351);
INSERT INTO `ebook_snapshot` VALUES (312, 2, '2021-05-08', 2661, 113, 2661, 113);
INSERT INTO `ebook_snapshot` VALUES (313, 3, '2021-05-08', 1097, 138, 1097, 138);
INSERT INTO `ebook_snapshot` VALUES (314, 1, '2021-05-09', 13493, 352, 13493, 352);
INSERT INTO `ebook_snapshot` VALUES (315, 2, '2021-05-09', 2703, 113, 2703, 113);
INSERT INTO `ebook_snapshot` VALUES (316, 3, '2021-05-09', 1103, 138, 1103, 138);
INSERT INTO `ebook_snapshot` VALUES (317, 1, '2021-05-10', 13577, 352, 13577, 352);
INSERT INTO `ebook_snapshot` VALUES (318, 2, '2021-05-10', 2713, 113, 2713, 113);
INSERT INTO `ebook_snapshot` VALUES (319, 3, '2021-05-10', 1112, 138, 1112, 138);
INSERT INTO `ebook_snapshot` VALUES (320, 1, '2021-05-11', 13650, 354, 13650, 354);
INSERT INTO `ebook_snapshot` VALUES (321, 2, '2021-05-11', 2724, 115, 2724, 115);
INSERT INTO `ebook_snapshot` VALUES (322, 3, '2021-05-11', 1120, 138, 1120, 138);
INSERT INTO `ebook_snapshot` VALUES (323, 1, '2021-05-12', 13795, 356, 13795, 356);
INSERT INTO `ebook_snapshot` VALUES (324, 2, '2021-05-12', 2752, 117, 2752, 117);
INSERT INTO `ebook_snapshot` VALUES (325, 3, '2021-05-12', 1130, 139, 1130, 139);
INSERT INTO `ebook_snapshot` VALUES (326, 1, '2021-05-13', 13868, 357, 13868, 357);
INSERT INTO `ebook_snapshot` VALUES (327, 2, '2021-05-13', 2763, 117, 2763, 117);
INSERT INTO `ebook_snapshot` VALUES (328, 3, '2021-05-13', 1136, 140, 1136, 140);
INSERT INTO `ebook_snapshot` VALUES (329, 1, '2021-05-14', 14033, 360, 14033, 360);
INSERT INTO `ebook_snapshot` VALUES (330, 2, '2021-05-14', 2793, 118, 2793, 118);
INSERT INTO `ebook_snapshot` VALUES (331, 3, '2021-05-14', 1148, 140, 1148, 140);
INSERT INTO `ebook_snapshot` VALUES (332, 1, '2021-05-15', 14122, 361, 14122, 361);
INSERT INTO `ebook_snapshot` VALUES (333, 2, '2021-05-15', 2821, 120, 2821, 120);
INSERT INTO `ebook_snapshot` VALUES (334, 3, '2021-05-15', 1154, 141, 1154, 141);
INSERT INTO `ebook_snapshot` VALUES (335, 1, '2021-05-16', 14183, 364, 14183, 364);
INSERT INTO `ebook_snapshot` VALUES (336, 2, '2021-05-16', 2846, 121, 2846, 121);
INSERT INTO `ebook_snapshot` VALUES (337, 3, '2021-05-16', 1160, 142, 1160, 142);
INSERT INTO `ebook_snapshot` VALUES (338, 1, '2021-05-17', 14345, 366, 14345, 366);
INSERT INTO `ebook_snapshot` VALUES (339, 2, '2021-05-17', 2867, 122, 2867, 122);
INSERT INTO `ebook_snapshot` VALUES (340, 3, '2021-05-17', 1168, 143, 1168, 143);
INSERT INTO `ebook_snapshot` VALUES (341, 1, '2021-05-18', 14394, 366, 14394, 366);
INSERT INTO `ebook_snapshot` VALUES (342, 2, '2021-05-18', 2888, 123, 2888, 123);
INSERT INTO `ebook_snapshot` VALUES (343, 3, '2021-05-18', 1172, 143, 1172, 143);
INSERT INTO `ebook_snapshot` VALUES (344, 1, '2021-05-19', 14616, 381, 14616, 381);
INSERT INTO `ebook_snapshot` VALUES (345, 2, '2021-05-19', 2911, 124, 2911, 124);
INSERT INTO `ebook_snapshot` VALUES (346, 3, '2021-05-19', 1181, 145, 1181, 145);
INSERT INTO `ebook_snapshot` VALUES (347, 1, '2021-05-20', 14741, 385, 14741, 385);
INSERT INTO `ebook_snapshot` VALUES (348, 2, '2021-05-20', 2955, 127, 2955, 127);
INSERT INTO `ebook_snapshot` VALUES (349, 3, '2021-05-20', 1191, 146, 1191, 146);
INSERT INTO `ebook_snapshot` VALUES (350, 1, '2021-05-21', 14840, 390, 14840, 390);
INSERT INTO `ebook_snapshot` VALUES (351, 2, '2021-05-21', 2971, 129, 2971, 129);
INSERT INTO `ebook_snapshot` VALUES (352, 3, '2021-05-21', 1200, 148, 1200, 148);
INSERT INTO `ebook_snapshot` VALUES (353, 1, '2021-05-22', 14893, 394, 14893, 394);
INSERT INTO `ebook_snapshot` VALUES (354, 2, '2021-05-22', 2971, 129, 2971, 129);
INSERT INTO `ebook_snapshot` VALUES (355, 3, '2021-05-22', 1203, 149, 1203, 149);
INSERT INTO `ebook_snapshot` VALUES (356, 1, '2021-05-23', 14940, 394, 14940, 394);
INSERT INTO `ebook_snapshot` VALUES (357, 2, '2021-05-23', 2972, 129, 2972, 129);
INSERT INTO `ebook_snapshot` VALUES (358, 3, '2021-05-23', 1207, 150, 1207, 150);
INSERT INTO `ebook_snapshot` VALUES (359, 1, '2021-05-24', 15066, 399, 15066, 399);
INSERT INTO `ebook_snapshot` VALUES (360, 2, '2021-05-24', 3016, 134, 3016, 134);
INSERT INTO `ebook_snapshot` VALUES (361, 3, '2021-05-24', 1215, 151, 1215, 151);
INSERT INTO `ebook_snapshot` VALUES (362, 1, '2021-05-25', 15207, 407, 15207, 407);
INSERT INTO `ebook_snapshot` VALUES (363, 2, '2021-05-25', 3033, 138, 3033, 138);
INSERT INTO `ebook_snapshot` VALUES (364, 3, '2021-05-25', 1231, 155, 1231, 155);
INSERT INTO `ebook_snapshot` VALUES (365, 1, '2021-05-26', 15317, 408, 15317, 408);
INSERT INTO `ebook_snapshot` VALUES (366, 2, '2021-05-26', 3078, 139, 3078, 139);
INSERT INTO `ebook_snapshot` VALUES (367, 3, '2021-05-26', 1239, 156, 1239, 156);
INSERT INTO `ebook_snapshot` VALUES (368, 1, '2021-05-27', 15538, 415, 15538, 415);
INSERT INTO `ebook_snapshot` VALUES (369, 2, '2021-05-27', 3098, 141, 3098, 141);
INSERT INTO `ebook_snapshot` VALUES (370, 3, '2021-05-27', 1247, 157, 1247, 157);
INSERT INTO `ebook_snapshot` VALUES (371, 1, '2021-05-28', 15577, 417, 15577, 417);
INSERT INTO `ebook_snapshot` VALUES (372, 2, '2021-05-28', 3111, 141, 3111, 141);
INSERT INTO `ebook_snapshot` VALUES (373, 3, '2021-05-28', 1251, 158, 1251, 158);
INSERT INTO `ebook_snapshot` VALUES (374, 1, '2021-05-29', 15607, 420, 15607, 420);
INSERT INTO `ebook_snapshot` VALUES (375, 2, '2021-05-29', 3113, 141, 3113, 141);
INSERT INTO `ebook_snapshot` VALUES (376, 3, '2021-05-29', 1253, 158, 1253, 158);
INSERT INTO `ebook_snapshot` VALUES (377, 1, '2021-05-30', 15656, 422, 15656, 422);
INSERT INTO `ebook_snapshot` VALUES (378, 2, '2021-05-30', 3122, 141, 3122, 141);
INSERT INTO `ebook_snapshot` VALUES (379, 3, '2021-05-30', 1258, 159, 1258, 159);
INSERT INTO `ebook_snapshot` VALUES (380, 1, '2021-05-31', 15726, 423, 15726, 423);
INSERT INTO `ebook_snapshot` VALUES (381, 2, '2021-05-31', 3130, 141, 3130, 141);
INSERT INTO `ebook_snapshot` VALUES (382, 3, '2021-05-31', 1264, 160, 1264, 160);
INSERT INTO `ebook_snapshot` VALUES (383, 1, '2021-06-01', 15835, 427, 15835, 427);
INSERT INTO `ebook_snapshot` VALUES (384, 2, '2021-06-01', 3135, 141, 3135, 141);
INSERT INTO `ebook_snapshot` VALUES (385, 3, '2021-06-01', 1268, 160, 1268, 160);
INSERT INTO `ebook_snapshot` VALUES (386, 1, '2021-06-02', 15922, 430, 15922, 430);
INSERT INTO `ebook_snapshot` VALUES (387, 2, '2021-06-02', 3155, 142, 3155, 142);
INSERT INTO `ebook_snapshot` VALUES (388, 3, '2021-06-02', 1274, 161, 1274, 161);
INSERT INTO `ebook_snapshot` VALUES (389, 1, '2021-06-03', 16010, 431, 16010, 431);
INSERT INTO `ebook_snapshot` VALUES (390, 2, '2021-06-03', 3175, 144, 3175, 144);
INSERT INTO `ebook_snapshot` VALUES (391, 3, '2021-06-03', 1279, 162, 1279, 162);
INSERT INTO `ebook_snapshot` VALUES (392, 1, '2021-06-04', 16082, 433, 16082, 433);
INSERT INTO `ebook_snapshot` VALUES (393, 2, '2021-06-04', 3217, 146, 3217, 146);
INSERT INTO `ebook_snapshot` VALUES (394, 3, '2021-06-04', 1290, 162, 1290, 162);
INSERT INTO `ebook_snapshot` VALUES (395, 1, '2021-06-05', 16142, 435, 16142, 435);
INSERT INTO `ebook_snapshot` VALUES (396, 2, '2021-06-05', 3223, 146, 3223, 146);
INSERT INTO `ebook_snapshot` VALUES (397, 3, '2021-06-05', 1296, 163, 1296, 163);
INSERT INTO `ebook_snapshot` VALUES (398, 1, '2021-06-06', 16223, 437, 16223, 437);
INSERT INTO `ebook_snapshot` VALUES (399, 2, '2021-06-06', 3237, 147, 3237, 147);
INSERT INTO `ebook_snapshot` VALUES (400, 3, '2021-06-06', 1302, 163, 1302, 163);
INSERT INTO `ebook_snapshot` VALUES (401, 1, '2021-06-07', 16358, 441, 16358, 441);
INSERT INTO `ebook_snapshot` VALUES (402, 2, '2021-06-07', 3269, 147, 3269, 147);
INSERT INTO `ebook_snapshot` VALUES (403, 3, '2021-06-07', 1310, 164, 1310, 164);
INSERT INTO `ebook_snapshot` VALUES (404, 1, '2021-06-08', 16424, 444, 16424, 444);
INSERT INTO `ebook_snapshot` VALUES (405, 2, '2021-06-08', 3280, 148, 3280, 148);
INSERT INTO `ebook_snapshot` VALUES (406, 3, '2021-06-08', 1315, 165, 1315, 165);
INSERT INTO `ebook_snapshot` VALUES (407, 1, '2021-06-09', 16538, 446, 16538, 446);
INSERT INTO `ebook_snapshot` VALUES (408, 2, '2021-06-09', 3308, 150, 3308, 150);
INSERT INTO `ebook_snapshot` VALUES (409, 3, '2021-06-09', 1323, 166, 1323, 166);
INSERT INTO `ebook_snapshot` VALUES (410, 1, '2021-06-10', 16610, 448, 16610, 448);
INSERT INTO `ebook_snapshot` VALUES (411, 2, '2021-06-10', 3331, 151, 3331, 151);
INSERT INTO `ebook_snapshot` VALUES (412, 3, '2021-06-10', 1336, 169, 1336, 169);
INSERT INTO `ebook_snapshot` VALUES (413, 1, '2021-06-11', 16726, 451, 16726, 451);
INSERT INTO `ebook_snapshot` VALUES (414, 2, '2021-06-11', 3350, 151, 3350, 151);
INSERT INTO `ebook_snapshot` VALUES (415, 3, '2021-06-11', 1340, 169, 1340, 169);
INSERT INTO `ebook_snapshot` VALUES (416, 1, '2021-06-12', 16749, 453, 16749, 453);
INSERT INTO `ebook_snapshot` VALUES (417, 2, '2021-06-12', 3361, 152, 3361, 152);
INSERT INTO `ebook_snapshot` VALUES (418, 3, '2021-06-12', 1342, 169, 1342, 169);
INSERT INTO `ebook_snapshot` VALUES (419, 1, '2021-06-13', 16795, 453, 16795, 453);
INSERT INTO `ebook_snapshot` VALUES (420, 2, '2021-06-13', 3368, 152, 3368, 152);
INSERT INTO `ebook_snapshot` VALUES (421, 3, '2021-06-13', 1345, 169, 1345, 169);
INSERT INTO `ebook_snapshot` VALUES (422, 1, '2021-06-14', 16833, 453, 16833, 453);
INSERT INTO `ebook_snapshot` VALUES (423, 2, '2021-06-14', 3380, 152, 3380, 152);
INSERT INTO `ebook_snapshot` VALUES (424, 3, '2021-06-14', 1347, 169, 1347, 169);
INSERT INTO `ebook_snapshot` VALUES (425, 1, '2021-06-15', 16916, 455, 16916, 455);
INSERT INTO `ebook_snapshot` VALUES (426, 2, '2021-06-15', 3400, 152, 3400, 152);
INSERT INTO `ebook_snapshot` VALUES (427, 3, '2021-06-15', 1351, 169, 1351, 169);
INSERT INTO `ebook_snapshot` VALUES (428, 1, '2021-06-16', 17056, 456, 17056, 456);
INSERT INTO `ebook_snapshot` VALUES (429, 2, '2021-06-16', 3412, 154, 3412, 154);
INSERT INTO `ebook_snapshot` VALUES (430, 3, '2021-06-16', 1361, 170, 1361, 170);
INSERT INTO `ebook_snapshot` VALUES (431, 1, '2021-06-17', 17148, 459, 17148, 459);
INSERT INTO `ebook_snapshot` VALUES (432, 2, '2021-06-17', 3422, 154, 3422, 154);
INSERT INTO `ebook_snapshot` VALUES (433, 3, '2021-06-17', 1366, 171, 1366, 171);
INSERT INTO `ebook_snapshot` VALUES (434, 1, '2021-06-18', 17204, 459, 17204, 459);
INSERT INTO `ebook_snapshot` VALUES (435, 2, '2021-06-18', 3444, 155, 3444, 155);
INSERT INTO `ebook_snapshot` VALUES (436, 3, '2021-06-18', 1368, 172, 1368, 172);
INSERT INTO `ebook_snapshot` VALUES (437, 1, '2021-06-19', 17291, 459, 17291, 459);
INSERT INTO `ebook_snapshot` VALUES (438, 2, '2021-06-19', 3453, 156, 3453, 156);
INSERT INTO `ebook_snapshot` VALUES (439, 3, '2021-06-19', 1373, 174, 1373, 174);
INSERT INTO `ebook_snapshot` VALUES (440, 1, '2021-06-20', 17354, 461, 17354, 461);
INSERT INTO `ebook_snapshot` VALUES (441, 2, '2021-06-20', 3461, 156, 3461, 156);
INSERT INTO `ebook_snapshot` VALUES (442, 3, '2021-06-20', 1380, 175, 1380, 175);
INSERT INTO `ebook_snapshot` VALUES (443, 1, '2021-06-21', 17442, 462, 17442, 462);
INSERT INTO `ebook_snapshot` VALUES (444, 2, '2021-06-21', 3474, 157, 3474, 157);
INSERT INTO `ebook_snapshot` VALUES (445, 3, '2021-06-21', 1384, 176, 1384, 176);
INSERT INTO `ebook_snapshot` VALUES (446, 1, '2021-06-22', 17514, 464, 17514, 464);
INSERT INTO `ebook_snapshot` VALUES (447, 2, '2021-06-22', 3484, 157, 3484, 157);
INSERT INTO `ebook_snapshot` VALUES (448, 3, '2021-06-22', 1395, 177, 1395, 177);
INSERT INTO `ebook_snapshot` VALUES (449, 1, '2021-06-23', 17590, 465, 17590, 465);
INSERT INTO `ebook_snapshot` VALUES (450, 2, '2021-06-23', 3494, 157, 3494, 157);
INSERT INTO `ebook_snapshot` VALUES (451, 3, '2021-06-23', 1406, 178, 1406, 178);
INSERT INTO `ebook_snapshot` VALUES (452, 1, '2021-06-24', 17652, 468, 17652, 468);
INSERT INTO `ebook_snapshot` VALUES (453, 2, '2021-06-24', 3498, 157, 3498, 157);
INSERT INTO `ebook_snapshot` VALUES (454, 3, '2021-06-24', 1411, 179, 1411, 179);
INSERT INTO `ebook_snapshot` VALUES (455, 1, '2021-06-25', 17742, 469, 17742, 469);
INSERT INTO `ebook_snapshot` VALUES (456, 2, '2021-06-25', 3515, 157, 3515, 157);
INSERT INTO `ebook_snapshot` VALUES (457, 3, '2021-06-25', 1418, 181, 1418, 181);
INSERT INTO `ebook_snapshot` VALUES (458, 1, '2021-06-26', 17814, 470, 17814, 470);
INSERT INTO `ebook_snapshot` VALUES (459, 2, '2021-06-26', 3542, 158, 3542, 158);
INSERT INTO `ebook_snapshot` VALUES (460, 3, '2021-06-26', 1423, 181, 1423, 181);
INSERT INTO `ebook_snapshot` VALUES (461, 1, '2021-06-27', 17878, 471, 17878, 471);
INSERT INTO `ebook_snapshot` VALUES (462, 2, '2021-06-27', 3553, 158, 3553, 158);
INSERT INTO `ebook_snapshot` VALUES (463, 3, '2021-06-27', 1428, 182, 1428, 182);
INSERT INTO `ebook_snapshot` VALUES (464, 1, '2021-06-28', 18013, 474, 18013, 474);
INSERT INTO `ebook_snapshot` VALUES (465, 2, '2021-06-28', 3579, 158, 3579, 158);
INSERT INTO `ebook_snapshot` VALUES (466, 3, '2021-06-28', 1434, 182, 1434, 182);
INSERT INTO `ebook_snapshot` VALUES (467, 1, '2021-06-29', 18082, 478, 18082, 478);
INSERT INTO `ebook_snapshot` VALUES (468, 2, '2021-06-29', 3589, 159, 3589, 159);
INSERT INTO `ebook_snapshot` VALUES (469, 3, '2021-06-29', 1441, 183, 1441, 183);
INSERT INTO `ebook_snapshot` VALUES (470, 1, '2021-06-30', 18124, 480, 18124, 480);
INSERT INTO `ebook_snapshot` VALUES (471, 2, '2021-06-30', 3602, 160, 3602, 160);
INSERT INTO `ebook_snapshot` VALUES (472, 3, '2021-06-30', 1445, 184, 1445, 184);
INSERT INTO `ebook_snapshot` VALUES (473, 1, '2021-07-01', 18288, 494, 18288, 494);
INSERT INTO `ebook_snapshot` VALUES (474, 2, '2021-07-01', 3644, 161, 3644, 161);
INSERT INTO `ebook_snapshot` VALUES (475, 3, '2021-07-01', 1459, 185, 1459, 185);
INSERT INTO `ebook_snapshot` VALUES (476, 1, '2021-07-02', 18376, 497, 18376, 497);
INSERT INTO `ebook_snapshot` VALUES (477, 2, '2021-07-02', 3646, 161, 3646, 161);
INSERT INTO `ebook_snapshot` VALUES (478, 3, '2021-07-02', 1465, 185, 1465, 185);
INSERT INTO `ebook_snapshot` VALUES (479, 1, '2021-07-03', 18441, 499, 18441, 499);
INSERT INTO `ebook_snapshot` VALUES (480, 2, '2021-07-03', 3652, 161, 3652, 161);
INSERT INTO `ebook_snapshot` VALUES (481, 3, '2021-07-03', 1468, 186, 1468, 186);
INSERT INTO `ebook_snapshot` VALUES (482, 1, '2021-07-04', 18500, 501, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (483, 2, '2021-07-04', 3652, 161, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (484, 3, '2021-07-04', 1469, 186, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (485, 1, '2021-07-05', 18552, 501, 18552, 501);
INSERT INTO `ebook_snapshot` VALUES (486, 2, '2021-07-05', 3668, 163, 3668, 163);
INSERT INTO `ebook_snapshot` VALUES (487, 3, '2021-07-05', 1472, 187, 1472, 187);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '测试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '测试', 'password');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登陆名',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_name_unique`(`login_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'test', '测试用户111', 'e70e2222a9d67c4f2eae107533359aa4');
INSERT INTO `user` VALUES (2, 'admin', '管理员', '84dd72f9672e26bba230ffce4df77903');
INSERT INTO `user` VALUES (3, 'test2', 'test2', 'fb09b64e309e1c33e7cf8cfe99b07bd5');
INSERT INTO `user` VALUES (23754851322302474, 'test1', 'test1', 'fb09b64e309e1c33e7cf8cfe99b07bd5');

SET FOREIGN_KEY_CHECKS = 1;
