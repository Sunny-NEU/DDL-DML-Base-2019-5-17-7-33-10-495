-- **数据库级别：**  
--  显示所有数据库  
SHOW DATABASES;
--  进入某个数据库  
USE 数据库名;
--  创建一个数据库  
CREATE DATABASE [IF NOT EXISTS] 数据库名;
--  创建指定字符集的数据库  
CREATE DATABASE 数据库名 DEFAULT CHARACTER SET 字符集名;
--  显示数据库的创建信息   
SHOW CREATE DATABASE 数据库名
--  修改数据库的编码  
SHOW VARIABLES like "char%" --查看当前数据库编码
alter database 数据库名 character set 字符集名
--  删除一个数据库   
DROP DATABASE [IF EXISTS] 数据库名;
-- **表级别**
--  修改student
ALTER  TABLE student RENAME TO newStudent;
--  修改字段的数据类型
ALTER TABLE student ALTER COLUMN id char(8);
--  修改字段名
ALTER TABLE student  CHANGE id student_id varchar(8);
--  添加字段
ALTER TABLE student ADD COLUMN score char(10);
--  删除字段
ALTER TABLE student  DROP score;
--  修改表的存储引擎 （MySQL 存储引擎主要有 InnoDB、MyISAM、Memory、BDB、Merge、Archive、Federated、CSV、BLACKHOLE 等）
ALTER TABLE student ENGINE=MyISAM;
--  删除表的外键约束
ALTER TABLE student DROP CONSTRAINT 外键约束名
--  删除一张表
DROP TABLE student;
