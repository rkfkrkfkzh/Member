alter table A add(name3 varchar2(50));--컬럼 추가 

alter table A RENAME column name to name2;--컬럼 이름 변경 

alter table A drop column name2; --컬럼 삭제 
INSERT INTO A (tel,AA,name3)		VALUES ('111','AAA','add');







--- table 보기
select * from tab;
---table 생성
create table member(
	id varchar2(50) primary key, --유일한 값을 가지고 null 이되어서는 안된다. (unique + not null)
	password varchar2(50) not null, --반드시 데이터를 넣어야한다.
	name varchar2(50) not null,
	address varchar2(50)
)
--table 삭제
drop table member;
--insert 구문
insert into member(id,password, name, address) values('java','1234','손연재','수서');
insert into member(id,password, name, address) values('jdbc','abcd','백박사','판교');
--adress는 null을 허용 ... not null 제약조검 컬럼은 무조건 입력
insert into member(id,password,name)values('jsp','king','황정민');
--name은 not null 이므로 반드시 insert 해야한다.
insert into member(id,password,address)values('servlet','a','춘포리');
--id가 중복, primary key 이므로 무결성 제약 조건 위배
insert into member(id,password,name)values('jsp','aaa','크리스탈');
--조회 (실무에서는 가급적 피한다)
select * from member;
select id,password,name,address from member;
--조회시 where 절을 사용(조건검색)
select id, name from member where address='수서';
-- 이름 백박사이고 주소가 판교인 회원을 조회
select id,password from member where name='백박사'and address='판교';
-- 수정 : update 이름이 백박사인 회원 주소를 수서로 수정
update member set address='수서' where name='백박사';
-- 조회 : 주소가 수서인 회원의 아이디와 이름을 모두 조회
select id, name from member where address='수서';

-- 수정: 손연재 회원의 주소를 수서에서 태릉으로 변경하고
-- 			 패스워드를 abcd로 변경
update member set address='태릉',password='abcd' where name='손연재';
-- 삭제 : delete
-- 이름이 황정민인 회원의 데이터를 삭제
delete from member where name='황정민';

select * from member;

