
-- 데이터 베이스 생성
-- create database <데이터베이스 이름>
create database mydb;

-- DB를 사용할려면 사용한다고 명령어를 실행 해야 한다.
use mydb;
-- 테이블 생성시, SQL 작성시 어떤 DB 사용해야 하는지 먼저 선택 되어야 한다.

-- 테이블 생성
CREATE TABLE student(
	student_id INT,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50) NOT NULL
);

SELECT * FROM student;
desc student;

-- 과목 테이블 생성하기
CREATE TABLE subject(
	subject_id INT,
    subject_name VARCHAR(50) NOT NULL,
    credit INT NOT NULL,
	department VARCHAR(50),
    professor CHAR(50) NOT NULL
);

SELECT * FROM subject;
desc subject;

desc subject;
-- 이미 생성된 테이블에 키 추가 하는 쿼리 사용방법
ALTER TABLE student ADD PRIMARY KEY(student_id);
-- 사전기반지식 : 특정 컬럼을 기본키로 만들게 되면 중복 데이터를 허용 못하고
-- NULL 값이 있어서는 안됨

-- subject 테이블에 PK 추가 대상 - subject_id
ALTER TABLE subject ADD PRIMARY KEY(subject_id);

-- 생성될 시점에 테이블 생성 명령어를 보여줘
SHOW CREATE TABLE student;

-- 테이블을 삭제하는 명령어 확인
DROP TABLE student;

DROP TABLE subject;


-- 학생 테이블 생성 PK 추가
CREATE TABLE student(
	stuent_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50) NOT NULL
);

DESC student;

CREATE TABLE subject(
	subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    credit INT NOT NULL,
    department VARCHAR(10) NOT NULL,
    professor VARCHAR(20) NOT NULL
);

DESC subject;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    department VARCHAR(20) NOT NULL
);

DESC employee;

CREATE TABLE customer(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL
);

DESC customer;

CREATE TABLE product(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT 
);

DESC product;

-- 
-- 'order' 예약어 테이블 이름을 선정할 수 없다 기본적으로
-- 하지만 강제적으로 '' 작은 따옴표를 사용해서 테이블 이름이라고 명시할 수 있다
CREATE TABLE `order`(
	id INT PRIMARY KEY, 
	cusotmer_order VARCHAR(50),
	product_name VARCHAR(20) NOT NULL,
	quantity INT NOT NULL, 
	order_date DATE NOT NULL    
);

DESC `order`;

CREATE TABLE movie(
	id INT PRIMARY KEY,
	movie_name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    rating DECIMAL(3, 2) NOT NULL,
    cast TEXT NOT NULL
);

DESC movie;

