# MySQL

## MySQL体系结构

![](C:\Users\thinkpad\AppData\Roaming\marktext\images\2023-06-13-09-12-39-fcceb8a5d78901fe8b45d363f7b8aa0.jpg)

MySQL采用的是三层架构：

1. 连接层：负责与客户端 建立连接

2. 服务层：包括管理服务和工具组件，SQL接口组件，查询分析器，优化器，缓存＆缓冲器

3. 插件式存储引擎：各种存储引擎，物理文件（Data, Redo,Undo,Binary,Error,Slow Query,Index）

---



连接MySQL的几种方式：

1. TCP/IP 最常用的一种方式，连接远程的MySQL

2. 命名管道，如果两个通信的进程在同一台服务器，那么可以使用命名管道。MySQL如果需要支持命名管道，需要在服务端配置文件中开启--enable-named-pipe选项

3. 共享内存：通过配置文件--share-memory实现，客户端还必须使用--protocol=memory

4. unix域套接字：Unix域套接字其实不是一个网络协议，所以只能在MySQL客户端和 数据库实例在同一台服务器上的情况使用

---





如何查看MySQL支持的存储引擎：

```
SHOW ENGINES\G
```



## InnoDB存储引擎(单进程多线程模型)

![](C:\Users\thinkpad\AppData\Roaming\marktext\images\2023-06-13-09-38-40-077bdb9fdd8e0e5f33f4c0ad9754b40.jpg)

InnoDB体系结构图

---

Innodb 支持事务，行级锁，支持外键

InnoDB后台线程主要负责刷新内存池中的数据，保持缓冲池中的内存缓存的是最近的数据。此外将已经修改的数据刷到磁盘文件中，同时保证在数据库发生异常的情况下InnoDB能恢复到正常状态。

#### Master Thread：

主要负责将缓冲池中的数据异步刷新到磁盘文件中，包括合并插入缓冲（Insert Buffer），脏页刷新，Undo页回收

#### IO Thread：

在InnoDB中，大量使用AIO（Async IO）来处理IO请求。而IO Thread蛀牙负责这些IO请求的call back 处理。有四种IO Thread，分别是：write，read，insert buffer ，Log IO Thread

查看Innodb 运行状态

```
SHOW ENGINE  INNODB STATUS\G
```

#### Purge Thread

当事务提交之后，其所用的Undolog可能不再需要，因此需要Purge Thread来回收已经分配并使用的Undo页

#### Page Cleaner Thread

Page Cleaner Thread 是InnoDB 1.2.x版本中引入的，其作用是将之前版本中脏页的刷新操作放到单独的线程中进行，减轻Master Thread的负担，提高性能。



#### 内存：

InnoDB是基于磁盘存储的，并将记录按照页的方式进行管理。因此可将其视为基于磁盘的数据库系统（Disk-base Database）。因为CPU和磁盘间速度差异很大，为了提高性能，基于磁盘的数据库系统通常使用缓冲池技术来提供数据库系统的整体性能。

缓冲池其实就是一块内存区域。客户端读取数据时，首先读取缓冲池中是否存在所需的数据，如果有，则称该页在缓冲池中命中。如果没有，则从磁盘中读取，并且将该数据页FIX到缓冲池中。

修改数据时，首先修改缓冲池中的数据，并在CheckPoint机制刷到磁盘中。

修改缓冲池的大小：

```
innodb_buffer_pool_size 设置
show variables like 'innodb_buffer_pool_size'\G 查看缓冲池大小
```

![](C:\Users\thinkpad\AppData\Roaming\marktext\images\2023-06-13-10-04-58-942f0e5ac10e695865aba245e9d845f.jpg)

可以拥有多个缓冲池实例：

```
show variables like 'innodb_buffer_pool_instances'\G
```

```
将配置文件中 innodb_buffer_pool_instances 设置成大于1，即可拥有多个缓冲池实例
```

数据库中的缓冲池通过LRU（latest Recent Used，最近最少使用）算法来管理。即将最频繁使用的页LRU列表的前端，最少使用的放在末端。当缓冲池中不能存放新读取到的页时，将首先释放LRU列表末端的页。在InnoDB存储引擎中，默认缓冲池的页大小为16K，同样使用LRU算法管理，但是在这LRU算法上做了些改进，加入了midpoint机制。即最新加入的页不是放在LRU列表最前端，而是放到LRU列表midpoint处。默认配置midpoint为LRU列表的5/8处。由innodb_old_blocks_pct控制

![](C:\Users\thinkpad\Desktop\微信截图_20230613103540.png)

## 

## 关键特性

### Insert Buffer

Insert Buffer其实和数据页一样，也是物理页的一个组成部分。由于B+树的特性决定，对于非聚集索引的插入不是顺序的。这是需要离散的访问非聚集索引页，造成性能低下。为了解决这个问题，InnoDB存储引擎设计了Insert Buffer，对于非聚集索引的插入或更新操作，先判断插入的非聚集索引页是否在缓冲池中，如果存在，则直接插入，如果不存在则放入到Insert buffer对象中，然后在以一定的频率进行Insert Buffer 和 辅助索引页的合并操作。对于Insert Buffer的使用，需要满足两个条件

1. 索引时辅助索引

2. 索引不是唯一的

### 两次写

doublewrite提升了Innodb存储引擎的数据页可靠性。考虑一种情形，如果Innodb在写数据到表中时发生了宕机，数据没有完全写完，那么就有可能存在数据丢失的情况。为了防止这种情况的发生，InnoDB使用了doublewrite机制。doublewrite由两部分组成，一个是内存中的doublewrite buffer 大小为2M。一个是磁盘中的共享表空间，连续的128个页，大小同样为2M。doublewrite工作过程是这样：

1. 刷新脏页时不是直接进入到磁盘（各自的表空间），而是先memcopy到doublewrite buffer中

2. 从doublewrite buffer 分两次写入到共享表空间，因为是顺序写入，速度较快

3. 完成第二步之后，再从double buffer中写入到各自的表空间，此时的写入是离散的，速度较慢。

这里需要一个明白一个地方，写磁盘慢的原因是，磁盘的寻址时间会比在内存中寻址时间长很多，传统的机械硬盘，寻道时间非常长，这是访问磁盘时间长的一个重要原因，当两个文件的地址相邻时，可以大大节省时间。doublewrite并非万无一失的操作，只是通过先写入到共享表空间，因为时间短，出错的概率就降低很多，以此来保证数据的安全性。



### MySQL 和 Innodb各种类型的文件和作用

1. 参数文件，告诉MySQL实例启动时在哪里找到数据库文件，并且指定一些初始化参数

2. 日志文件，用来记录MySQL实例对某些条件作出响应时写入的文件

3. socket文件，当用Unix域套接字方式进行连接时用到的文件

4. pid文件，MySQL实例进程ID文件

5. MySQL表结构文件：用来存放MySQL结构定义文件

6. 存储引擎文件：每个存储引擎都会有自己的文件，用来真正存储数据跟索引



#### 参数文件：

在默认情况下，MySQL实例会按照一定的顺序去查找参数文件，可以通过命令：

mysql --help | grep my.cnf 来寻找

MySQL的参数分两类：一种是动态的（dynamic），一种是静态的（static)。dynamic参数可以在实例运行期间使用set命令来设置。而static参数只能通过配置文件修改，并且 需要重启实例才能生效。





## MySQL的八大日志：

重做日志（redo log）是Innodb存储引擎生成的日志，记录的是“物理级别”上的页修改操作。对InnoDB至关重要，当实例或者介质失败时，重做日志就能派上用场。

作用：用于事务提交时保证事务的持久性，保证数据的可靠性

查看重做日志：```show global variables like 'innodb_log%';```

---



回滚日志（undo log）是InnoDB存储引擎生成的日志，记录的是逻辑操作日志，比如某一行发生了Insert操作，那么undo log就记录一条与之相反的DELETE操作

作用：

1. 用于事务的回滚，保证事务的原子性和一致性

2. 回滚记录到某种特定的版本--MVCC, 对事务的隔离性起到辅助作用

查看回滚日志：``show variables like 'innodb_undo'``

---



二进制日志（bin log）是MySQL中比较重要的日志，也叫做变更日志（update log）。它记录了数据库中所有执行的DDL和DML等数据库更新事件的语句，但是不包含没有修改任何数据的语句（比如查询语句，select 和 show等）

每次重启一次服务器，就会生成一个新的二进制日志文件。当日志文件超过max_binlog_size的设定时，可能生成一个新的文件

查看二进制日志文件命令``show binary logs``

bin log 日志文件是一个二进制文件，所以如果想要查看其内容，需要用命令：

``mysqlbinlog --no-defaults -v "/var/lib/mysql/binlog.000xxx"``

二进制日志文件格式

查看二进制文件格式命令: ``show variables like '%binlog_format%'``

二进制日志文件格式一共有三种：Statement 、Row、Mixed

Statement：每一条会修改数据的SQL都会被记录，优点是不需要记录每一行的变化，减少了binlog的日志量，节约了IO，提供性能

Row：5.1.5版本之后MySQL才开始支持row level复制，它不记录SQL语句上下文信息，仅保存哪条记录被修改。优点是row level的日志内容会非常清楚的记录下每一条数据被修改的细节。而且不会出现某些特定情况下的存储过程，或者function已经trigger的调用和触发无法被正确复制的问题

Mixed：5.1.8 版本之后才出现，实际上是Statement和Row的结合

作用：

1. 用于数据恢复，如果MySQL数据库意外停止，可以通过二进制日志来查看用户执行了哪些操作，对数据库服务器文件做哪些修改，然后根据二进制日志文件中的记录来恢复数据库服务器。

2. 用来做数据复制，由于日志的延续性和时效性，master把它的二进制日志传递到slave来达到master-slave数据一致的目的。

查看二进制日志: ``show variables like '%log_bin%%'``

---



慢查询日志（slow query log）提供了记录在mysql中响应时间超过指定阈值的语句。

long_query_time 来指定慢查询的阈值

作用：

1. 统一记录慢的SQL，有针对性的进行性能的优化，提高系统的整体效率

查看慢查询日志：``show variables like '%slow_query_log%'``

还可以通过 mysql.slow_log 表查看，更加直观

select * from mysql.slow_log\G 需要将log_output参数修改成TABLE

---



错误日志：错误日志记录了MySQL服务器启动、停止运行的时间，以及系统启动、运行和停止过程的信息，包括错误，警告和提示等。

作用：

1. 查看系统的运行状态，便于及时发现故障和修复故障

2. 用于排查MySQL服务出现异常的原因

查看命令：``show variables like 'log_err%'``

在MySQL故障的情况下，打开错误日志文件，然后搜索Error，Waring级别的日志排查

---



通用查询日志：通过查询通用日志记录用户的所有操作，包括启动和关闭MySQL服务，所有用户的链接开始时间和截止时间、发给MySQL数据库服务器的所有SQL指令，如select，show等，无论SQL的语法正确还是错误，也无论SQL执行成功还是失败，MySQL都会将其记录下来。

作用：还原操作时的具体场景，用于帮助我们准确定位一些疑难问题

查看日志：``SHOW VARIABLES LIKE '%general%'``

---



中继日志（relay log)：中继日志只有在主从架构中存在，从服务器为了和主服务器数据保持一致，读取主服务器中二进制日志的内容并且把读取到的信息写入到本地的日志文件中，这个从服务器的本地日志文件就叫做中继日志。搭建好主从架构之后，中继日志默认保存在从服务器的数据目录下。文件格式名称一般为：从服务器名-relay-bin.序号。中继日志还有一个索引文件：从服务器名-relay-bin.index 用来定位当前正在使用的中继日志。

作用：用于主从数据同步，从服务器从中继日志中读取内容，恢复数据。

---



数据定义语句日志（ddl.log）

数据定义语句日志（ddl.log）记录数据定义语句执行的元数据操作，例如（DROP Table 和ALTER TABLE）等

作用：MySQL使用此日志从元数据操作中间发生的奔溃中恢复





### 事务的四种隔离级别

1. read uncommitted。可以读到未提交的数据，存在脏读

2. read committed。只有当事务已经提交了，才能读到。存在不可重复度，同一次事务不同时刻读取同一条记录，数据不同。

3. repeatable read。因为存在不可重复读的问题，那么这里就实现了可重复读，在同一个事务内，不同时刻读取同一条记录，结果一致。但是会出现幻读现象，就是实际上数据以及修改了，但是在原来的事务里面没能及时获取到最新。

4. serializable（序列化读）。所有的事务依照次序依次执行，依次脏读，不可重复读，幻读都不存在了。虽然序列化是事务隔离级别中最高安全性，但是由于事务串行执行，导致性能低下。如果没有特别重要的场景，一般都不会使用serializable级别。Innodb默认隔离级别是repeatable read。

事务的几个基本特征：ACID（A:原子性atomicity，C：一致性consistency，I：隔离性isolation，D：持久性duration）


