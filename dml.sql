-- 插入记录  
INSERT INTO student(id,name,age,sex)
VALUES ('003','王五',26,'男');
-- 修改记录  
UPDATE student SET id='004',name='赵四',age=30 WHERE id='002';
--  删除记录  
DELETE FROM student WHERE id='001';  
-- 查询记录 
SELECT * FROM student WHERE name='张三';  
