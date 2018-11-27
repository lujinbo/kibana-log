### docker容器启动命令

```shell
docker run -dit --name ek -p 19200:19200 -p 15601:15601 registry.cn-beijing.aliyuncs.com/ucse/log

```

### 访问登录信息

```shell

#Kibana
#路径：/passwd_file/passwd_15601
#默认账号 admin
#默认密码 123456

#Elasticsearch
#路径：/passwd_file/passwd_19200
#默认账号 admin
#默认密码 123456

```


### 密码生成规则

```shell
openssl passwd 密码

#密码文件内容说明
用户名:openssl生成返回密码

```