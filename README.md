## 为了方便测试与使用，对鱼皮的sqlfather进行了打包封装

分为三个镜像ordar/sqlfather-backend、ordar/sqlfather-frontend、ordar/sqlfather-mysql

需要三个镜像配合使用，建议使用docker-compose启动。

将下面内容保存为：docker-compose.yml

然后一键启动：docker-compose up -d
```
version: "3.7"

services:
  backend:
    image: ordar/sqlfather-backend
    ports:
      - 8102:8102
    working_dir: /app
    depends_on:
      - mysql
      
  frontend:
    image: ordar/sqlfather-frontend
    ports:
      - 80:80
  
  mysql:
    image: ordar/sqlfather-mysql
```

感谢鱼皮开发并开源如此优秀的项目。

原项目地址：https://github.com/liyupi/sql-father-backend-public/
