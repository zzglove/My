CREATE TABLE `employees` (
`emp_no` INT(11) NOT NULL, 
`birth_date` DATE NOT NULL,
`first_name` VARCHAR(14) NOT NULL,
`last_name` VARCHAR(16) NOT NULL,
`gender` CHAR(1) NOT NULL,
`hire_date` DATE NOT NULL,
PRIMARY KEY (`emp_no`));
INSERT INTO employees VALUES(10001,‘1953-09-02’,‘Georgi’,‘Facello’,‘M’,‘1986-06-26’);
INSERT INTO employees VALUES(10002,‘1964-06-02’,‘Bezalel’,‘Simmel’,‘F’,‘1985-11-21’);
INSERT INTO employees VALUES(10003,‘1959-12-03’,‘Parto’,‘Bamford’,‘M’,‘1986-08-28’);
INSERT INTO employees VALUES(10004,‘1954-05-01’,‘Chirstian’,‘Koblick’,‘M’,‘1986-12-01’);
INSERT INTO employees VALUES(10005,‘1955-01-21’,‘Kyoichi’,‘Maliniak’,‘M’,‘1989-09-12’);
INSERT INTO employees VALUES(10006,‘1953-04-20’,‘Anneke’,‘Preusig’,‘F’,‘1989-06-02’);
INSERT INTO employees VALUES(10007,‘1957-05-23’,‘Tzvetan’,‘Zielinski’,‘F’,‘1989-02-10’);
INSERT INTO employees VALUES(10008,‘1958-02-19’,‘Saniya’,‘Kalloufi’,‘M’,‘1994-09-15’);
INSERT INTO employees VALUES(10009,‘1952-04-19’,‘Sumant’,‘Peac’,‘F’,‘1985-02-18’);
INSERT INTO employees VALUES(10010,‘1963-06-01’,‘Duangkaew’,‘Piveteau’,‘F’,‘1989-08-24’);
INSERT INTO employees VALUES(10011,‘1953-11-07’,‘Mary’,‘Sluis’,‘F’,‘1990-01-22’);
SELECT * FROM employees ORDER BY hire_date DESC limit 1;
drop table if exists employees ;
drop table if exists  film ;
drop table if exists  category  ; 
drop table if exists  film_category  ; 
CREATE TABLE IF NOT EXISTS film (
  film_id smallint(5)  NOT NULL DEFAULT '0',
  title varchar(255) NOT NULL,
  description text,
  PRIMARY KEY (film_id));
CREATE TABLE category  (
   category_id  tinyint(3)  NOT NULL ,
   name  varchar(25) NOT NULL, `last_update` timestamp,
  PRIMARY KEY ( category_id ));
CREATE TABLE film_category  (
   film_id  smallint(5)  NOT NULL,
   category_id  tinyint(3)  NOT NULL, `last_update` timestamp);
INSERT INTO film VALUES(1,'ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies');
INSERT INTO film VALUES(2,'ACE GOLDFINGER','A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China');
INSERT INTO film VALUES(3,'ADAPTATION HOLES','A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory');

INSERT INTO category VALUES(1,'Action','2006-02-14 20:46:27');
INSERT INTO category VALUES(2,'Animation','2006-02-14 20:46:27');
INSERT INTO category VALUES(3,'Children','2006-02-14 20:46:27');
INSERT INTO category VALUES(4,'Classics','2006-02-14 20:46:27');
INSERT INTO category VALUES(5,'Comedy','2006-02-14 20:46:27');
INSERT INTO category VALUES(6,'Documentary','2006-02-14 20:46:27');
INSERT INTO category VALUES(7,'Drama','2006-02-14 20:46:27');
INSERT INTO category VALUES(8,'Family','2006-02-14 20:46:27');
INSERT INTO category VALUES(9,'Foreign','2006-02-14 20:46:27');
INSERT INTO category VALUES(10,'Games','2006-02-14 20:46:27');
INSERT INTO category VALUES(11,'Horror','2006-02-14 20:46:27');
select t.film_id,t.title from film t left join film_category f
on f.film_id = t.film_id 
where f.category_id is null;
drop table if exists employees ;
CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`));

INSERT INTO employees VALUES(10001,'1953-09-02','Georgi','Facello','M','1986-06-26');
INSERT INTO employees VALUES(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21');
INSERT INTO employees VALUES(10003,'1959-12-03','Parto','Bamford','M','1986-08-28');
INSERT INTO employees VALUES(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01');
INSERT INTO employees VALUES(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12');
INSERT INTO employees VALUES(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02');
INSERT INTO employees VALUES(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10');
INSERT INTO employees VALUES(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15');
INSERT INTO employees VALUES(10009,'1952-04-19','Sumant','Peac','F','1985-02-18');
INSERT INTO employees VALUES(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24');
INSERT INTO employees VALUES(10011,'1953-11-07','Mary','Sluis','F','1990-01-22');
SELECT * FROM employees LIMIT 5 OFFSET 5;
CREATE TABLE actor  (
   actor_id  smallint(5)  NOT NULL PRIMARY KEY,
   first_name  varchar(45) NOT NULL,
   last_name  varchar(45) NOT NULL,
   last_update  datetime NOT NULL); 
   
    CREATE UNIQUE INDEX uniq_idx_firstname ON actor(first_name);
    CREATE INDEX idx_lastname ON actor(last_name);
    SELECT p.id, number, t_rank
FROM passing_number p JOIN (SELECT id, DENSE_RANK() OVER(ORDER BY number DESC) AS t_rank
FROM passing_number) r
	ON p.id = r.id
ORDER BY number DESC


