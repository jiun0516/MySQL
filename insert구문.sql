
-- 데이터 저장
/*
 여러줄 주석
*/

-- DROP TABLE student;
-- DROP TABLE subject;
-- DROP TABLE product;

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50)
);

-- I 기본 문구 모양
-- INSERT INTO 테이블명(컬럼명1, 컬럼명2, ..) VALUES (값1, 값2);
INSERT INTO student(student_id, name, grade, major)
VALUES (1, '홍길동', 3, '컴퓨터공학과');

INSERT INTO student(student_id, name, grade, major)
VALUES (2, '김철수', 4, '전자공학과');

INSERT INTO student(student_id, name, grade, major)
VALUES (3, '이영희', 2, '경영학과');

INSERT INTO student(student_id, name, grade, major)
VALUES (4, '티모', 1, '롤학과');

-- 테이블의 데이터를 삭제하는 명령어 사용해보기
DELETE FROM student;

-- 복수형으로 insert 쿼리문 작성하기
INSERT INTO student(student_id, name, grade, major)
VALUES 
	(1001, '김철수', 2, '컴퓨터공학과'),
    (1002, '이영희', 3, '수학과'),
    (1003, '박민수', 1, '전자공학과');
    
-- 복수형으로 데이터 3행을 넣어주세요
INSERT INTO student(student_id, name, grade, major)
VALUES
	(1004, '김철수2', 2, '컴퓨터공학과'),
    (1005, '이영희2', 3, '수학과'),
    (1006, '박민수2', 1, '전자공학과');
    
-- insert 구문에서 복수행 쿼리를 실행할 때 하나라도 오류가 있으면
-- 데이터는 정상 저장되지 않는다.
INSERT INTO student(student_id, name, grade, major)
VALUES
	(1007, '김철수3', 2, '컴퓨터공학과'),
    (1008, '이영희3', 3, '수학과'),
    (1009, '박민수3', 1, '전자공학과');



SELECT * FROM student;

DESC employee;
INSERT INTO employee(id, name, age, department)
VALUES
	(1, '신짱구', 24, '디자인부서'),
    (2, '김철수', 26, '개발부서'),
    (3, '이훈이', 28, '마케팅부서'),
    (4, '신짱아', 27, '마케팅부서'),
    (5, '신형만', 24, '영업부서');

DESC customer;
INSERT INTO customer(id, name, email, address)
VALUES
	(1, '노진구', 'abc1234@gmail.com', '부산'),
    (2, '퉁퉁이', 'cde1234@naver.com', '서울'),
    (3, '비실이', 'cde1234@daum.net', '대전'),
    (4, '도라에몽', 'abc1234@naver.com', '경기'),
    (5, '도라미', 'abcd124@naver.com', '인천');
    
SELECT * FROM employee;
SELECT * FROM customer;

DESC product;
INSERT INTO product(id, name, price, description)
VALUE (1, '뿌링클', 18000, '시즈닝뿌린 치킨');

INSERT INTO product(id, name, price, description)
VALUE (2, '맛쵸킹', 18500, '간장 치킨');

INSERT INTO product(id, name, price, description)
VALUE (3, '핫뿌링클', 20000, '매운시즈닝뿌린 치킨');

SELECT * FROM product;

-- 테이블 제약사항에 NULL 허용 의미와 NOT NULL 허용 의미
ALTER TABLE student MODIFY grade INT NULL;
DESC student;