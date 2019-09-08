# citicup

[![Build Status](https://travis-ci.com/CaribouW/citicup.svg?branch=master)](https://travis-ci.com/CaribouW/citicup)

集成如下 repos

- 特别注意：不建议直接在该repo下更改sub-module内容，如果有修改内容，请在各自的仓库修改之后提交，该仓库中进行sync同步即可`(1.仓库拉取和版本同步)`

| url                                         | 说明          |
| ------------------------------------------- | ------------- |
| https://github.com/GStarP/networker-admin   | 前端admin仓库 |
| https://github.com/HermitSun/networker-user | 前端user仓库  |
| https://github.com/TianChenjiang/Networker  | 后端仓库      |

采用最简单的微服务架构，访问说明如下

| url                                 | 说明           |
| ----------------------------------- | -------------- |
| http://citicup.top/networker/user/  | user用户端     |
| http://citicup.top/networker/admin/ | admin管理员端  |
| http://citicup.top/api/             | 后端请求基路径 |

### 本地环境搭建

#### 0. 需要工具

- golang 11及以上版本
- Docker . docker-compose

#### 1. 仓库拉取和版本同步

根目录下执行：

```
# 仓库clone
git clone https://github.com/CaribouW/citicup.git
# 版本同步,使得各个sub-module更新到各个仓库的master:HEAD
bash bash/sync.sh
```

#### 2. 本地数据库和服务器开启

一条指令搭建docker环境和go服务器

根目录下执行：

```bash
bash bash/setup-locally.sh
```

之后，服务端将会运行在 `localhost:8080` 下，可以根据需要进行前端联调开发。

数据库相关配置如下

| 属性               | 内容         |
| ------------------ | ------------ |
| Version 数据库版本 | Mysql 5.7.21 |
| Password 密码      | mysql        |
| Port 本机端口      | 33006        |

### 服务端部署

根目录下执行：

```bash
bash bash/setup-deploy.sh
```

