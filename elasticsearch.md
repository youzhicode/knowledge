# Elasticsearch

`Elasticsearch 学习知识图谱，根据8.8版本翻译整理`



> Elasticsearch是什么：
> 
> Elasticsearch是一个分布式的搜索和分析引擎



> Elasticsearch主要是用来解决什么问题
> 
> 面对大数据量的搜索，传统的sql会显得力不从心。Elasticsearch为所有类型的数据提供了近乎实时的搜索和分析。用户可以超简单的做数据检索和聚合信息来发现数据中的趋势和模式。随着数据和查询量的增长，Elasticsearch的分布式特性是你可以高效且方便的部署



> Elasticsearch使用场景
> 
> - 对接应用或者网站中的搜索
> 
> - 存储和分析日志，指标和安全事件数据
> 
> - 使用机器学习实时自动建模数据行为
> 
> - 使用Elasticsearch作为存储引擎来自动化业务工作流程
> 
> - 使用Elasticsearch作为地理信息系统（GIS）管理、集成和分析空间信息
> 
> - 使用Elasticsearch作为生物信息研究工具存储和处理遗传数据



> 搜索数据：
> 
> Elasticsearch REST API 支持结构化查询、全文查询、以及结合了两者的复杂查询
> 
> 可以使用Elasticsearch全面的json样式查询语言访问所有这些搜索功能。还可以构建SQL样式的查询。JDBC和ODBC驱动程序使得第三方应用程序可以通过SQL与Elasticsearch交互



> 分析数据
> 
> Elasticsearch 聚合使你能够构建复杂的数据摘要并深入了解关键指标、趋势、和模式



> 可扩展性和弹性：集群，节点和分片
> 
> Elasticsearch的宗旨是构建一个始终可用的并且可以根据用户需求可扩展的搜索引擎。可以轻松的将节点服务器接入到Elasticsearch集群中，Elasticsearch会自动将你的数据和查询负载分布到所有可用节点。
> 
> Elasticsearch运作机制：Elasticsearch索引实际上是一个或者多个物理分片的逻辑分组。其中每一个分片实际上是一个独立的索引。通过将索引中的分档分布到多个分片上，并将这些分片分布到多个节点中，Elasticsearch确保冗余，这既可以防止硬件故障，又可以在节点添加到集群时增加查询容量。随着业务的增长或者收缩，Elasticsearch会自动迁移分片以平衡集群



> 有两种类型的分片：主分片和副本分片。索引中的每一个文档都归属于一个主分片，而副本分片是主分片的副本。副本提供数据的冗余副本，以防止硬件故障并增加处理读取请求的能力
> 
> 索引中主分片的数量是在创建索引时固定的，但副本分片的数量可以随时更改，而不会中断索引或者查询操作



> 分片大小和索引配置的主分片数量方面存在着许多性能考虑因素和折中方案：
> 
> 分片越多，维护这些索引的开销就越大。分片容量越大，当Elasticsearch需要重新平衡集群时，移动分片所需要的时间就越长
> 
> 查询大量小分片会使得每个分片的处理速度越快，但更多的查询意味着更多的开销。因此查询数量较少的较大分片可能会更快。

> 为了保证高可用，除了节点之间需要保持良好与可靠的链接之外，还需要做好集群之间的高可用，当一个集群出现重大中断故障，另一个位置的服务器能够接管。集群之间的复制叫CCR(跨集群复制)



### Simple run elasticsearch locally

```
// 添加document
curl -X POST "localhost:9200/customer/_doc/1?pretty" -H 'Content-Type: application/json' -d'
{
  "firstname": "Jennifer",
  "lastname": "Walters"
}

 
```

```
// 获取document
curl -X GET "localhost:9200/customer/_doc/1?pretty"
```

```
// 批量添加
curl -X PUT "localhost:9200/customer/_bulk?pretty" -H 'Content-Type: application/json' -d'
{ "create": { } }
{ "firstname": "Monica","lastname":"Rambeau"}
{ "create": { } }
{ "firstname": "Carol","lastname":"Danvers"}
{ "create": { } }
{ "firstname": "Wanda","lastname":"Maximoff"}
{ "create": { } }
{ "firstname": "Jennifer","lastname":"Takeda"}
'


```

```
// 查询
curl -X GET "localhost:9200/customer/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query" : {
    "match" : { "firstname": "Jennifer" }
  }
}
'


```

## Index Modules

`Index Moduels 是一个管理，控制，索引已经创建好的索引的模块`

### Index Settings

`索引的设置分两种，一种是static设置，一种是dynamic设置:`

- static
  
  `They can only be set at index creation time or on a closed index. PS: 只能是在创建或者一个已经关闭的index上设置`

- dynamic
  
  `They can be changed on a live index using the update-index-setting API.PS: 可以使用update-index-setting api 在实时索引上修改他们`



1.  Static  index settings
   
   `Below is a list of all static index settings that are not associated with any specific index module`
   
   + index.number_of_shares 索引应该具有的主分片数，默认为1。只能在创建索引时指定
   
   + index.number_of_routing_shards
   
   + index.codec 压缩方式，默认LZ4
   
   + index.routing_partition_size 自定义路由可以转到的分片数
   
   + index.soft_deletes_enabled 指示是否对索引启动软删除
   
   + index.soft_deletes.retention_lease.period 历史分片的保留最长时间
   
   + index.load_fixed_bitset_filters_eagerly 指示是否为嵌套查询加载缓存过滤器。Possible values are true(default) and false

2. Dynamic index settings
   
   Below is a list of all *dynamic* index settings that are not associated with any specific index module
   
   - index.number_of_replicas 每个主分片的副本数
   
   - index.auto_expand_replicas 根据集群中数据节点的数量自动扩容副本数量
   
   - index.search.idle.after  分片在被视为搜索空闲之前无法接收搜索或获取请求的时间。（默认为`30s`）
   
   - index.refresh_interval 执行刷新操作的频率，这使得最近对索引的更改对搜索可见
   
   - index.max_result_window from+size 搜索此索引的最大值，默认为10000
   
   





### elasticsearch

> Elasticsearch is a near real time search platform
> Elasticsearch security features have been automatically configured!
> Authentication is enabled and cluster connections are encrypted.

*Password for the elastic user (reset with `bin/elasticsearch-reset-password -u elastic`):
  GDS3aTMseSt=E7jdpAMq*

`修改默认密码：必须在elasticsearch服务启动的情况下对密码进行重置/重设操作.重置:'bin/elasticsearch-reset-password -u xxxxx' xxxx 表示用户名   重设: 'bin/elasticsearch-reset-password -u xxxxx -i' 需要用户自定义密码输入` 

> HTTP CA certificate SHA-256 fingerprint:
>   a1a6fcd94560493df6bfa6c49b2b25e66464a3c95d62c61e0911e8c8856da0ef

> Configure Kibana to use this cluster:

- Run Kibana and click the configuration link in the terminal when Kibana starts.
- Copy the following enrollment token and paste it into Kibana in your browser (valid for the next 30 minutes):
  eyJ2ZXIiOiI4LjguMSIsImFkciI6WyIxOTIuMTY4LjEwLjEyOjkyMDAiXSwiZmdyIjoiYTFhNmZjZDk0NTYwNDkzZGY2YmZhNmM0OWIyYjI1ZTY2NDY0YTNjOTVkNjJjNjFlMDkxMWU4Yzg4NTZkYTBlZiIsImtleSI6IjlmTWFub2dCaWs5dlRMWjh0aGw4OmJ1cWFSaDN5U202RWd6bDc3YzBjY2cifQ==

> Configure other nodes to join this cluster:

- On this node:
  + Create an enrollment token with `bin/elasticsearch-create-enrollment-token -s node`.
  + Uncomment the transport.host setting at the end of config/elasticsearch.yml.
  + Restart Elasticsearch.
- On other nodes:
  + Start Elasticsearch with `bin/elasticsearch --enrollment-token <token>`, using the enrollment token that you generated.

#### 源码安装完成之后设置的几个点：

> 修改密码: 修改默认密码：必须在elasticsearch服务启动的情况下对密码进行重置/重设操作.重置:'bin/elasticsearch-reset-password -u xxxxx' xxxx 表示用户名   重设: 'bin/elasticsearch-reset-password -u xxxxx -i' 需要用户自定义密码输入
> 
> 设置环境变量ES_HOME:修改/etc/profile
> 
> Running as a daemon:  ./bin/elasticsearch -d -p pid

#### 一些配置项目

- ES_PATH_CONF
  + 配置config目录路径，默认存在$ES_HOME/config  可以通过ES_PATH_CONF自定义

#### 常见问题

> received plaintext http traffic on an https channel, closing connection Netty4HttpChannel
> 
> > 启动elasticsearch时，由于es开启了安全认证，所以输入http://localhost:9200会出现以上报错信息，需要在config/elasticsearch.ymal配置文件中将安全认证关闭:xpack.security.http.ssl下面的enabled:false

#### 操作演示

- 查看集群健康状态:curl --user elastic:12345678 http://127.0.0.1:9200/_cat/health?v
  
  > 集群健康状态的三种颜色:
  > green everything is good(cluster is fully functional)
  > yellow all data is available but some replicas are not yet allocated(cluster is full functional)
  > red some data is not available for whatever reason(cluster is partially functional)

- 查看节点状态: curl --user elastic:12345678 http://127.0.0.1:9200/_cat/nodes?v

- 查看节点所有indices: curl --user elastic:12345678 http://127.0.0.1:9200/_cat/indices?v

- 创建一个index: curl --user elastic:12345678 -X PUT http://127.0.0.1:9200/customer?pretty   customer是index名字   参数pretty用于美化输出

- 创建一个document: curl --user elastic:12345678 -X PUT http://localhost:9200/customer/_doc/1?pretty -d '{"name":"John Doe"}' -H "Content-Type: Application/Json"

- 查询一个document：curl --user elastic:12345678 -X GET http://localhost:9200/customer/_doc/1?pretty

- 删除一个index：curl --user elastic:12345678 -X DELETE http://localhost:9200/customer?pretty

#### Modifying Your Data

> 手动指定一个ID添加document：
> 
> > curl --user elastic:12345678 -X PUT http://localhost:9200/customer/_doc/1?pretty -d '{"name": "Johe Doe"}' -H "Content-Type: Application/Json"

> 如果再次提交相同ID的document，那么会替换已经存在的文档
> 
> > curl --user elastic:12345678 -X PUT http://localhost:9200/customer/_doc/1?pretty -d '{"name": "Johe Doe"}' -H "Content-Type: Application/Json"

> 不指定ID，创建一个document
> 
> > curl --user elastic:12345678 -X POST http://localhost:9200/customer/_doc?pretty -d '{"name": "Johe Doe"}' -H "Content-Type: Application/Json"
> >     PS: 这里使用的动词是POST， 因为我们没有使用指定ID

#### Updating Document

> 更新已经存在的文档，Elasticsearch不会真的更新文档，而是删除之后重建