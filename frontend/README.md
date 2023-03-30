1.修改后端请求地址

修改原项目 https://github.com/liyupi/sql-father-frontend-public/ 的/src/app.tsx文件。

默认是测试环境，需要修改成生产环境

![111](../img/1.png)


2.使用nodejs进行生产打包生成的dist
```
npm run build
```
3.然后使用nginx直接运行


