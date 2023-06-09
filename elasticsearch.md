###elasticsearch
✅ Elasticsearch is a near real time search platform
✅ Elasticsearch security features have been automatically configured!
✅ Authentication is enabled and cluster connections are encrypted.

ℹ️  Password for the elastic user (reset with `bin/elasticsearch-reset-password -u elastic`):
  GDS3aTMseSt=E7jdpAMq

`修改默认密码：必须在elasticsearch服务启动的情况下对密码进行重置/重设操作.重置:'bin/elasticsearch-reset-password -u xxxxx' xxxx 表示用户名   重设: 'bin/elasticsearch-reset-password -u xxxxx -i' 需要用户自定义密码输入` 

ℹ️  HTTP CA certificate SHA-256 fingerprint:
  a1a6fcd94560493df6bfa6c49b2b25e66464a3c95d62c61e0911e8c8856da0ef

ℹ️  Configure Kibana to use this cluster:
• Run Kibana and click the configuration link in the terminal when Kibana starts.
• Copy the following enrollment token and paste it into Kibana in your browser (valid for the next 30 minutes):
  eyJ2ZXIiOiI4LjguMSIsImFkciI6WyIxOTIuMTY4LjEwLjEyOjkyMDAiXSwiZmdyIjoiYTFhNmZjZDk0NTYwNDkzZGY2YmZhNmM0OWIyYjI1ZTY2NDY0YTNjOTVkNjJjNjFlMDkxMWU4Yzg4NTZkYTBlZiIsImtleSI6IjlmTWFub2dCaWs5dlRMWjh0aGw4OmJ1cWFSaDN5U202RWd6bDc3YzBjY2cifQ==

ℹ️  Configure other nodes to join this cluster:
• On this node:
  ⁃ Create an enrollment token with `bin/elasticsearch-create-enrollment-token -s node`.
  ⁃ Uncomment the transport.host setting at the end of config/elasticsearch.yml.
  ⁃ Restart Elasticsearch.
• On other nodes:
  ⁃ Start Elasticsearch with `bin/elasticsearch --enrollment-token <token>`, using the enrollment token that you generated.


####源码安装完成之后设置的几个点：
> 修改密码: 修改默认密码：必须在elasticsearch服务启动的情况下对密码进行重置/重设操作.重置:'bin/elasticsearch-reset-password -u xxxxx' xxxx 表示用户名   重设: 'bin/elasticsearch-reset-password -u xxxxx -i' 需要用户自定义密码输入
>
> 设置环境变量ES_HOME:修改/etc/profile
> Running as a daemon:  ./bin/elasticsearch -d -p pid


#### 一些配置项目
- ES_PATH_CONF
  + 配置config目录路径，默认存在$ES_HOME/config  可以通过ES_PATH_CONF自定义


####常见问题
>received plaintext http traffic on an https channel, closing connection Netty4HttpChannel
>>启动elasticsearch时，由于es开启了安全认证，所以输入http://localhost:9200会出现以上报错信息，需要在config/elasticsearch.ymal配置文件中将安全认证关闭:xpack.security.http.ssl下面的enabled:false


####操作演示
>查看集群健康状态:curl --user elastic:12345678 http://127.0.0.1:9200/_cat/health?v
- 集群健康状态的三种颜色:
    * green everything is good(cluster is fully functional)
    * yellow all data is available but some replicas are not yet allocated(cluster is full functional)
    * red some data is not available for whatever reason(cluster is partially functional)

> 查看节点状态: curl --user elastic:12345678 http://127.0.0.1:9200/_cat/nodes?v
> 查看节点所有indices: curl --user elastic:12345678 http://127.0.0.1:9200/_cat/indices?v
> 创建一个index: curl --user elastic:12345678 -X PUT http://127.0.0.1:9200/customer?pretty   customer是index名字


>添加一个document
curl -H "Content-Type: application/json" --user elastic:0crSPN*r26q6Jkf=BLK9 -X POST -d '{"name":"weiki"}' http://127.0.0.1:9200/customer/_doc/1


#### 数据类型
