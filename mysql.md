# MySQL

## MySQL的八大日志：

重做日志（redo log）是Innodb存储引擎生成的日志，记录的是“物理级别”上的页修改操作。

作用：用于事务提交时保证事务的持久性，保证数据的可靠性

查看重做日志：```show global variables like 'innodb_log%';```



回滚日志（undo log）是InnoDB存储引擎生成的日志，记录的是逻辑操作日志，比如某一行发生了Insert操作，那么undo log就记录一条与之相反的DELETE操作

作用：

1. 用于事务的回滚，保证事务的原子性和一致性

2. 回滚记录到某种特定的版本--MVCC, 对事务的隔离性起到辅助作用

查看回滚日志：``show variables like 'innodb_undo'``



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



慢查询日志（slow query log）提供了记录在mysql中响应时间超过指定阈值的语句。

作用：

1. 统一记录慢的SQL，有针对性的进行性能的优化，提高系统的整体效率

查看慢查询日志：``show variables like '%slow_query_log%'``



错误日志：错误日志记录了MySQL服务器启动、停止运行的时间，以及系统启动、运行和停止过程的信息，包括错误，警告和提示等。

作用：

1. 查看系统的运行状态，便于及时发现故障和修复故障

2. 用于排查MySQL服务出现异常的原因

查看命令：``show variables like 'log_err%'``

在MySQL故障的情况下，打开错误日志文件，然后搜索Error，Waring级别的日志排查



通用查询日志：通过查询通用日志记录用户的所有操作，包括启动和关闭MySQL服务，所有用户的链接开始时间和截止时间、发给MySQL数据库服务器的所有SQL指令，如select，show等，无论SQL的语法正确还是错误，也无论SQL执行成功还是失败，MySQL都会将其记录下来。

作用：还原操作时的具体场景，用于帮助我们准确定位一些疑难问题

查看日志：``SHOW VARIABLES LIKE '%general%'``



中继日志（relay log)：中继日志只有在主从架构中存在，从服务器为了和主服务器数据保持一致，读取主服务器中二进制日志的内容并且把读取到的信息写入到本地的日志文件中，这个从服务器的本地日志文件就叫做中继日志。搭建好主从架构之后，中继日志默认保存在从服务器的数据目录下。文件格式名称一般为：从服务器名-relay-bin.序号。中继日志还有一个索引文件：从服务器名-relay-bin.index 用来定位当前正在使用的中继日志。

作用：用于主从数据同步，从服务器从中继日志中读取内容，恢复数据。



数据定义语句日志（ddl.log）

数据定义语句日志（ddl.log）记录数据定义语句执行的元数据操作，例如（DROP Table 和ALTER TABLE）等

作用：MySQL使用此日志从元数据操作中间发生的奔溃中恢复










